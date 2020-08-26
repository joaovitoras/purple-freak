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
    lead = convert_row_to_lead(row)
    process_lead_or_add_errors(lead)
  end
  puts @errors.count
  puts @errors.uniq
end

def convert_row_to_lead(row)
  init_params = {
    full_name: row[:nome_completo],
    signed_at: row[:data_da_primeira_converso],
    email: row[:email],
    profession: row[:profisso],
    created_at: row[:data_da_primeira_converso],
    updated_at: row[:data_da_primeira_converso]
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
