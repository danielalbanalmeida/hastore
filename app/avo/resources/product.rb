class Avo::Resources::Product < Avo::BaseResource
  # self.includes = []
  # self.attachments = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: q, m: "or").result(distinct: false) }
  # }

  def fields
    field :id, as: :id
    field :Brand, as: :text
    field :Product_Name, as: :text
    field :Features, as: :text
    field :Information, as: :text
    field :Performance_Levels, as: :text
    field :Signal_Processing_Gain, as: :text
    field :Hearing_Programs, as: :number
  end
end
