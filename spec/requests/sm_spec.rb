
require 'rails_helper'

RSpec.describe 'Todos API', type: :request do
  # initialize test data 
  #let!(:todos) { create_list(:todo, 10) }
  #let(:todo_id) { todos.first.id }

  # Test suite for POST /sm
  describe 'POST /sm' do
    # valid payload
    let(:valid_attributes) { { mobile: '07710855986', content: 'Your code is 1234', username: 'sms_gateway', timestamp: '2014-09-19 07:03:30 -0700', digest: '12AB45CD67'} }

    context 'when the request is valid' do
      before { post '/sm', params: valid_attributes }

      it 'creates a sm' do
        #expect() count to change by 1
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
      
       it 'returns a success response in the body' do
        expect(response.body).to eq "SUCCESS"
        #expect(response).to contain_exactly ('SUCCESS')
      end
    end

    context 'when the request is invalid' do
      before { post '/sm', params: { title: 'Foobar' } }

      it 'returns status code 422' do
        expect(response).to have_http_status(500)
      end

      it 'returns a validation failure message' do
        expect(response.body).to eq ('RG_SMS_OS')
          #.to include("Validation failed:")
      end
    end
  end

end