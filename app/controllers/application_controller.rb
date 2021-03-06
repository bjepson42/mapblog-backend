class ApplicationController < ActionController::API
    def secret_key
        'g0@h3@d@ndm@pme!'
    end

    def encode(payload)
        JWT.encode(payload, secret_key, 'HS256')
    end

    def decode(token)
        JWT.decode(token, secret_key, true,{algorith: 'HS256'})[0]
    end
end
