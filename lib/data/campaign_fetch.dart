class CampaignFetch {
  static final String fetchAll = """
    query { 
      getCreatedCampaigns2 {
        id
        description
        image_url
        name
        organization {
          id
          name
          country
        }
      } 
    }
  """;

  static final String fetchById = """
    query (\$id: String!) {
      getCampaign2 (campaign_id: \$id) {
        __typename
        id
        description
        image_url
        name
        organization {
          id
          name
          country
        }
      }
    }
  """;
}
