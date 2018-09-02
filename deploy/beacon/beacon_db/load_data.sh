#/bin/bash
set -e
echo "Creating beacon sampleset SG10K"
PGPASSWORD=r783qjkldDsiu \
    psql -U microaccounts_dev elixir_beacon_dev <<-EOSQL
        INSERT INTO beacon_dataset
        (id, description, access_type, reference_genome, size)
        VALUES
        ('SG10K', 'dataset_description', 'PUBLIC', 'grch38', 126437688);
EOSQL
echo "Created beacon schema"

echo "Loading sample data..."
cat /tmp/global.SNPs | \
    PGPASSWORD=r783qjkldDsiu \
        psql -U microaccounts_dev elixir_beacon_dev -c \
            "COPY beacon_data_table(dataset_id,chromosome,position,alternate) FROM STDIN USING DELIMITERS ';' CSV"

echo "Loaded sample data."

rm /tmp/global.SNPs
