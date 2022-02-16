SET search_path TO {{currentschema}};

UNLOAD ('SELECT * FROM aggregate_match_test_set')
TO 's3://dk-celgene-hemonc/dk-qc-all-schemas/{{celgene_project|lower}}/{{currentschema}}/raw/aggregate_match_{{today}}.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::312577553836:role/DKRedshiftRole-for-Hemonc'
FORMAT AS CSV
HEADER
ALLOWOVERWRITE
PARALLEL OFF;

UNLOAD ('SELECT * FROM allowed_increment_test_set')
TO 's3://dk-celgene-hemonc/dk-qc-all-schemas/{{celgene_project|lower}}/{{currentschema}}/raw/allowed_increment_{{today}}.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::312577553836:role/DKRedshiftRole-for-Hemonc'
FORMAT AS CSV
HEADER
ALLOWOVERWRITE
PARALLEL OFF;

UNLOAD ('SELECT * FROM condition_check_test_set')
TO 's3://dk-celgene-hemonc/dk-qc-all-schemas/{{celgene_project|lower}}/{{currentschema}}/raw/condition_check_{{today}}.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::312577553836:role/DKRedshiftRole-for-Hemonc'
FORMAT AS CSV
HEADER
ALLOWOVERWRITE
PARALLEL OFF;

UNLOAD ('SELECT * FROM data_match_test_set')
TO 's3://dk-celgene-hemonc/dk-qc-all-schemas/{{celgene_project|lower}}/{{currentschema}}/raw/data_match_{{today}}.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::312577553836:role/DKRedshiftRole-for-Hemonc'
FORMAT AS CSV
HEADER
ALLOWOVERWRITE
PARALLEL OFF;

UNLOAD ('SELECT * FROM not_null_test_set')
TO 's3://dk-celgene-hemonc/dk-qc-all-schemas/{{celgene_project|lower}}/{{currentschema}}/raw/not_null_{{today}}.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::312577553836:role/DKRedshiftRole-for-Hemonc'
FORMAT AS CSV
HEADER
ALLOWOVERWRITE
PARALLEL OFF;

UNLOAD ('SELECT * FROM primary_key_test_set')
TO 's3://dk-celgene-hemonc/dk-qc-all-schemas/{{celgene_project|lower}}/{{currentschema}}/raw/primary_key_{{today}}.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::312577553836:role/DKRedshiftRole-for-Hemonc'
FORMAT AS CSV
HEADER
ALLOWOVERWRITE
PARALLEL OFF;

UNLOAD ('SELECT * FROM prior_match_test_set')
TO 's3://dk-celgene-hemonc/dk-qc-all-schemas/{{celgene_project|lower}}/{{currentschema}}/raw/prior_match_{{today}}.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::312577553836:role/DKRedshiftRole-for-Hemonc'
FORMAT AS CSV
HEADER
ALLOWOVERWRITE
PARALLEL OFF;

UNLOAD ('SELECT * FROM uniqueness_test_set')
TO 's3://dk-celgene-hemonc/dk-qc-all-schemas/{{celgene_project|lower}}/{{currentschema}}/raw/uniqueness_{{today}}.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::312577553836:role/DKRedshiftRole-for-Hemonc'
FORMAT AS CSV
HEADER
ALLOWOVERWRITE
PARALLEL OFF;

UNLOAD ('SELECT * FROM value_match_test_set')
TO 's3://dk-celgene-hemonc/dk-qc-all-schemas/{{celgene_project|lower}}/{{currentschema}}/raw/value_match_{{today}}.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::312577553836:role/DKRedshiftRole-for-Hemonc'
FORMAT AS CSV
HEADER
ALLOWOVERWRITE
PARALLEL OFF;

UNLOAD ('SELECT * FROM window_match_test_set')
TO 's3://dk-celgene-hemonc/dk-qc-all-schemas/{{celgene_project|lower}}/{{currentschema}}/raw/window_match_{{today}}.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::312577553836:role/DKRedshiftRole-for-Hemonc'
FORMAT AS CSV
HEADER
ALLOWOVERWRITE
PARALLEL OFF;

UNLOAD ('SELECT * FROM custom_query_test_set')
TO 's3://dk-celgene-hemonc/dk-qc-all-schemas/{{celgene_project|lower}}/{{currentschema}}/raw/custom_query_{{today}}.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::312577553836:role/DKRedshiftRole-for-Hemonc'
FORMAT AS CSV
HEADER
ALLOWOVERWRITE
PARALLEL OFF;
