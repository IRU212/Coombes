// @generated automatically by Diesel CLI.

diesel::table! {
    users (id) {
        id -> Integer,
        #[max_length = 30]
        name -> Nullable<Varchar>,
        #[max_length = 64]
        email -> Varchar,
    }
}
