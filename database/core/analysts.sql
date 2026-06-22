CREATE TABLE analysts (

    analyst_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    supabase_user_id UUID UNIQUE,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    phone VARCHAR(15),
    department VARCHAR(100),
    role VARCHAR(50) NOT NULL DEFAULT 'Analyst',
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()

);
