Pod::Spec.new do |spec|
    spec.name         = 'FRKDataProviders'
    spec.version      = '1.0.3'
    spec.license      = 'MIT'
    spec.homepage     = 'https://www.frankcourville.com/projects'
    spec.authors      = { 'Frank Courville' => 'hello@frankcourville.com' }
    spec.summary      = 'Smarter data sources for UICollectionView and UITableView'
    spec.source       = { :git => 'https://github.com/frankacy/FRKDataProviders.git', :tag => 'v1.0.3' }
    spec.platform     = :ios
    spec.framework    = 'UIKit'
    spec.requires_arc = true
    spec.default_subspec = 'Base'
    
    spec.subspec 'Base' do |cs|
        cs.source_files = 'FRKDataProvider/Base/*.{h,m}'
    end
    
    spec.subspec 'CollectionView' do |cvs|
        cvs.source_files = 'FRKDataProvider/CollectionView/*.{h,m}'
        cvs.dependency 'FRKDataProviders/Base'
    end
    
    spec.subspec 'TableView' do |tvs|
        tvs.source_files = 'FRKDataProvider/TableView/*.{h,m}'
        tvs.dependency 'FRKDataProviders/Base'
    end
end