class CampaignFetch {
  static final String fetchAll = """
    query { getCreatedCampaigns }
  """;

  static final String fetchById = """
    query (\$id: String!) {
      getCampaign (campaign_id: \$id) {
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
