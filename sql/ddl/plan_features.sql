CREATE TABLE plan_features (
    plan_id NUMBER NOT NULL,
    feature_id NUMBER NOT NULL,
    CONSTRAINT pk_plan_features PRIMARY KEY (plan_id, feature_id),
    CONSTRAINT fk_pf_plan FOREIGN KEY (plan_id)
        REFERENCES plans(plan_id),
    CONSTRAINT fk_pf_feature FOREIGN KEY (feature_id)
        REFERENCES features(feature_id)
);