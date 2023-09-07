module ApplicationHelper
  def category_icon(category)
    icons = {
      "wifi" => "fa-solid fa-wifi",
      "coffee" => "fa-solid fa-mug-hot",
      "water" => "fa-solid fa-faucet-drip",
      "quiet" => "fa-solid fa-volume-xmark",
      "trees" => "fa-solid fa-tree",
      "power" => "fa-solid fa-plug",
      "seating" => "fa-solid fa-chair",
      "shelter" => "fa-solid fa-person-shelter",
      "animals" => "fa-solid fa-paw",
      "cost" => "fa-solid fa-euro-sign",
      "bathroom" => "fa-solid fa-toilet",
      "view" => "fa-solid fa-mountain-sun"
    }
    icons[category]
  end
end
