#/bin/bash
set -e
echo "Creating beacon sampleset WHH4997"
PGPASSWORD=r783qjkldDsiu \
    psql -U microaccounts_dev elixir_beacon_dev <<-EOSQL
        INSERT INTO beacon_dataset
        (id, description, access_type, reference_genome, size)
        VALUES
        ('WHH4997', 'dataset_description', 'PUBLIC', 'grch37', 34437);
EOSQL
echo "Created beacon schema"

echo "Loading sample data..."
cat /tmp/WHH4997.SNPs | \
    PGPASSWORD=r783qjkldDsiu \
        psql -U microaccounts_dev elixir_beacon_dev -c \
            "COPY beacon_data_table(dataset_id,chromosome,position,alternate) FROM STDIN USING DELIMITERS ';' CSV"

echo "Loaded sample data."

rm /tmp/WHH4997.SNPs


echo "Creating beacon sampleset WHH4998"
PGPASSWORD=r783qjkldDsiu \
    psql -U microaccounts_dev elixir_beacon_dev <<-EOSQL
        INSERT INTO beacon_dataset
        (id, description, access_type, reference_genome, size)
        VALUES
        ('WHH4998', 'dataset_description', 'PUBLIC', 'grch37', 35999);
EOSQL
echo "Created beacon schema"

echo "Loading sample data..."
cat /tmp/WHH4998.SNPs | \
    PGPASSWORD=r783qjkldDsiu \
        psql -U microaccounts_dev elixir_beacon_dev -c \
            "COPY beacon_data_table(dataset_id,chromosome,position,alternate) FROM STDIN USING DELIMITERS ';' CSV"

echo "Loaded sample data."

rm /tmp/WHH4998.SNPs



echo "Creating beacon sampleset WHH4999"
PGPASSWORD=r783qjkldDsiu \
    psql -U microaccounts_dev elixir_beacon_dev <<-EOSQL
        INSERT INTO beacon_dataset
        (id, description, access_type, reference_genome, size)
        VALUES
        ('WHH4999', 'dataset_description', 'PUBLIC', 'grch37', 34749);
EOSQL
echo "Created beacon schema"

echo "Loading sample data..."
cat /tmp/WHH4999.SNPs | \
    PGPASSWORD=r783qjkldDsiu \
        psql -U microaccounts_dev elixir_beacon_dev -c \
            "COPY beacon_data_table(dataset_id,chromosome,position,alternate) FROM STDIN USING DELIMITERS ';' CSV"

echo "Loaded sample data."

rm /tmp/WHH4999.SNPs

  
echo "Creating beacon sampleset WHH5000"
PGPASSWORD=r783qjkldDsiu \
    psql -U microaccounts_dev elixir_beacon_dev <<-EOSQL
        INSERT INTO beacon_dataset
        (id, description, access_type, reference_genome, size)
        VALUES
        ('WHH5000', 'dataset_description', 'PUBLIC', 'grch37', 34895);
EOSQL
echo "Created beacon schema"

echo "Loading sample data..."
cat /tmp/WHH5000.SNPs | \
    PGPASSWORD=r783qjkldDsiu \
        psql -U microaccounts_dev elixir_beacon_dev -c \
            "COPY beacon_data_table(dataset_id,chromosome,position,alternate) FROM STDIN USING DELIMITERS ';' CSV"

echo "Loaded sample data."

rm /tmp/WHH5000.SNPs

