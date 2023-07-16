param appName string = 'bicep-practice-app'
param location string = 'eastasia'
param skuName string = 'Free'
param skuTier string = 'Free'
param provider string = 'DevOps'
param repositoryUrl string = 'https://github.com/yus04/React-emoji-search'
param branch string = 'main'

resource staticWebApp 'Microsoft.Web/staticSites@2022-03-01' = {
  name: appName
  location: location
  sku: {
    name: skuName
    tier: skuTier
  }
  properties: {
    provider: provider
    repositoryUrl: repositoryUrl
    branch: branch
  }
}
