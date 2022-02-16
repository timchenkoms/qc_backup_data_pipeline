SET search_path TO {{currentschema}};

TRUNCATE aggregate_match_test_set;
TRUNCATE allowed_increment_test_set;
TRUNCATE condition_check_test_set;
TRUNCATE data_match_test_set;
TRUNCATE not_null_test_set;
TRUNCATE primary_key_test_set;
TRUNCATE prior_match_test_set;
TRUNCATE uniqueness_test_set;
TRUNCATE window_match_test_set;
TRUNCATE value_match_test_set;

COPY aggregate_match_test_set
FROM 's3://dk-celgene-hemonc/dk-qc-all-schemas/{{celgene_project|lower}}/{{currentschema}}/aggregate_match/aggregate_match_{{today}}.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::312577553836:role/DKRedshiftRole-for-Hemonc'
FORMAT AS CSV
BLANKSASNULL
TIMEFORMAT AS 'auto'
DATEFORMAT AS 'auto'
IGNOREHEADER AS 1;

COPY allowed_increment_test_set
FROM 's3://dk-celgene-hemonc/dk-qc-all-schemas/{{celgene_project|lower}}/{{currentschema}}/allowed_increment/allowed_increment_{{today}}.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::312577553836:role/DKRedshiftRole-for-Hemonc'
FORMAT AS CSV
BLANKSASNULL
TIMEFORMAT AS 'auto'
DATEFORMAT AS 'auto'
IGNOREHEADER AS 1;

COPY condition_check_test_set
FROM 's3://dk-celgene-hemonc/dk-qc-all-schemas/{{celgene_project|lower}}/{{currentschema}}/condition_check/condition_check_{{today}}.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::312577553836:role/DKRedshiftRole-for-Hemonc'
FORMAT AS CSV
BLANKSASNULL
TIMEFORMAT AS 'auto'
DATEFORMAT AS 'auto'
IGNOREHEADER AS 1;

COPY data_match_test_set
FROM 's3://dk-celgene-hemonc/dk-qc-all-schemas/{{celgene_project|lower}}/{{currentschema}}/data_match/data_match_{{today}}.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::312577553836:role/DKRedshiftRole-for-Hemonc'
FORMAT AS CSV
BLANKSASNULL
TIMEFORMAT AS 'auto'
DATEFORMAT AS 'auto'
IGNOREHEADER AS 1;

COPY not_null_test_set
FROM 's3://dk-celgene-hemonc/dk-qc-all-schemas/{{celgene_project|lower}}/{{currentschema}}/not_null/not_null_{{today}}.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::312577553836:role/DKRedshiftRole-for-Hemonc'
FORMAT AS CSV
BLANKSASNULL
TIMEFORMAT AS 'auto'
DATEFORMAT AS 'auto'
IGNOREHEADER AS 1;

COPY primary_key_test_set
FROM 's3://dk-celgene-hemonc/dk-qc-all-schemas/{{celgene_project|lower}}/{{currentschema}}/primary_key/primary_key_{{today}}.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::312577553836:role/DKRedshiftRole-for-Hemonc'
FORMAT AS CSV
BLANKSASNULL
TIMEFORMAT AS 'auto'
DATEFORMAT AS 'auto'
IGNOREHEADER AS 1;

COPY prior_match_test_set
FROM 's3://dk-celgene-hemonc/dk-qc-all-schemas/{{celgene_project|lower}}/{{currentschema}}/prior_match/prior_match_{{today}}.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::312577553836:role/DKRedshiftRole-for-Hemonc'
FORMAT AS CSV
BLANKSASNULL
TIMEFORMAT AS 'auto'
DATEFORMAT AS 'auto'
IGNOREHEADER AS 1;

COPY uniqueness_test_set
FROM 's3://dk-celgene-hemonc/dk-qc-all-schemas/{{celgene_project|lower}}/{{currentschema}}/uniqueness/uniqueness_{{today}}.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::312577553836:role/DKRedshiftRole-for-Hemonc'
FORMAT AS CSV
BLANKSASNULL
TIMEFORMAT AS 'auto'
DATEFORMAT AS 'auto'
IGNOREHEADER AS 1;

COPY value_match_test_set
FROM 's3://dk-celgene-hemonc/dk-qc-all-schemas/{{celgene_project|lower}}/{{currentschema}}/value_match/value_match_{{today}}.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::312577553836:role/DKRedshiftRole-for-Hemonc'
FORMAT AS CSV
BLANKSASNULL
TIMEFORMAT AS 'auto'
DATEFORMAT AS 'auto'
IGNOREHEADER AS 1;

COPY window_match_test_set
FROM 's3://dk-celgene-hemonc/dk-qc-all-schemas/{{celgene_project|lower}}/{{currentschema}}/window_match/window_match_{{today}}.csv'
CREDENTIALS 'aws_iam_role=arn:aws:iam::312577553836:role/DKRedshiftRole-for-Hemonc'
FORMAT AS CSV
BLANKSASNULL
TIMEFORMAT AS 'auto'
DATEFORMAT AS 'auto'
IGNOREHEADER AS 1;