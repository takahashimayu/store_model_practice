class Interview < ApplicationRecord
  store_attribute :contents, :work_situation, :string                  # 勤務の状況(テキスト)
  store_attribute :contents, :fatigue_accumulation, :integer           # 疲労蓄積度(4段階 単一選択)
  store_attribute :contents, :mental_and_physical_condition, :boolean  # 心身の状況(所見あり/所見なし)
  store_attribute :contents, :guidance_kbn, :json                      # 本人への指導区分(選択方式 複数選択可)
  store_attribute :contents, :note, :string                            # その他の特記事項
  
  GUIDANCE_KBN_NAME = {
    'sochi_fuyo' => '0. 措置不要',
    'yo_hokenshido' => '1. 要保健指導',
    'yo_keikakansatsu' => '2. 要経過観察',
    'yo_saimensetsu' => '3. 要再面接',
    'chiryo' => '4. 現病治療継続 又は 医療機関紹介'
  }.freeze
end
