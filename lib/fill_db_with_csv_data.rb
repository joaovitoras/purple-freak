def run!
  @file_path = Rails.root.join("data/leads-internet-pela-educacao.csv")
  csv_options = {
    headers: true,
    return_headers: false,
    header_converters: :symbol,
    converters: :all
  }
  @csv = CSV.read(@file_path, csv_options)
  @errors = []
  @csv.each do |row|
    next unless row[:full_name].present?

    lead = convert_row_to_lead(row)
    process_lead_or_add_errors(lead)
  end
  puts @errors.count
  puts @errors.uniq
end
# csv headers: email,data_ultima_conversao,full_name,profissao

def convert_row_to_lead(row)
  init_params = {
    full_name: row[:full_name],
    signed_at: row[:data_ultima_conversao],
    email: row[:email],
    profession: row[:profissao],
    created_at: row[:data_ultima_conversao],
    updated_at: row[:data_ultima_conversao]
  }
  Lead.new(init_params)
end

def process_lead_or_add_errors(lead)
  lead.valid?
  if lead.valid?
    lead.save!
  else
    @errors << lead.errors.messages
  end
end

run!
