require 'swagger_helper'

RSpec.describe 'users', type: :request do
  path '/user' do
    get('user details') do
      tags 'Users'
      security [ApiKeyAuth: {}] # Include Bearer token in request
      response(200, 'successful') do
        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end

  path '/user/preferences' do
    get('get_preferences user') do
      tags 'Users'
      security [ApiKeyAuth: {}]
      response(200, 'successful') do
        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    patch('update_preferences user') do
      consumes 'application/json'
      tags 'Users'
      security [ApiKeyAuth: {}]
      parameter name: :user,
                in: :body,
                schema: {
                  type: :object,
                  properties: {
                    preferences: {
                      type: :object
                    }
                  },
                  required: ['preferences']
                }

      response(200, 'successful') do
        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end

  path '/user/password' do
    patch('update_password user') do
      consumes 'application/json'
      tags 'Users'
      security [ApiKeyAuth: {}]
      parameter name: :user,
                in: :body,
                schema: {
                  type: :object,
                  properties: {
                    current_password: {
                      type: :string
                    },
                    new_password: {
                      type: :string
                    }
                  },
                  required: %w[current_password new_password]
                }

      response(200, 'successful') do
        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end

  path '/users/sign_in' do
    post('sign_in user') do
      consumes 'application/json'
      tags 'Users'
      parameter name: :user,
                in: :body,
                schema: {
                  type: :object,
                  properties: {
                    email: {
                      type: :string
                    },
                    password: {
                      type: :string
                    }
                  },
                  required: %w[email password]
                }

      response(200, 'successful') do
        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end

  path '/users' do
    post('create user') do
      consumes 'application/json'
      tags 'Users'
      parameter name: :user,
                in: :body,
                schema: {
                  type: :object,
                  properties: {
                    name: {
                      type: :string
                    },
                    email: {
                      type: :string
                    },
                    password: {
                      type: :string
                    }
                  },
                  required: %w[name email password],
                  example: {
                    name: 'John Doe',
                    email: 'user9@example.com',
                    password: 'StrongPassword@99'
                  }
                }

      response '201', 'user created' do
        let(:user) do
          {
            name: 'John Doe',
            email: 'user9@example.com',
            password: 'StrongPassword@99'
          }
        end

        examples 'application/json' => {
                   user: {
                     id: 1,
                     name: 'John Doe',
                     email: 'user9@example.com',
                     preferences: {}
                   },
                   auth_token:
                     'e7edbdb39a4b517a268c88e0fffae0e4fa34f793b5b717ae06868b123f3704821685478335'
                 }

        run_test!
      end

      response '422', 'unprocessable entity' do
        let(:user) { { name: '', email: '', password: '' } } # Invalid data

        examples 'application/json' => {
                   'errors': [
                     "Password can't be blank",
                     "Name can't be blank",
                     "Email can't be blank",
                     'Email is invalid'
                   ]
                 }

        run_test!
      end
    end
  end
end
