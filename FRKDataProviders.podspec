Pod::Spec.new do |spec|
    spec.name         = 'FRKDataProviders'
    spec.version      = '1.0.0'
    spec.license      = { :type => 'MIT' }
    spec.homepage     = 'https://www.frankcourville.com/projects'
    spec.authors      = { 'Frank Courville' => 'oss@frankcourville.com' }
    spec.summary      = 'Smarter data sources for UICollectionView and UITableView'
    spec.source       = { :git => 'https://github.com/frankacy/FRKDataProviders.git', :tag => 'v1.0.0' }
    spec.framework    = 'UIKit'
    spec.requires_arc = true
    spec.default_subspec = 'Core'
    
    spec.subspec 'Core' do |cs|
        cs.dependency 'FRKDataProviders/AbstractProviders'
        cs.dependency 'FRKDataProviders/CollectionView'
        cs.dependency 'FRKDataProviders/TableView'
    end
    
    spec.subspec 'AbstractProviders' do |abs|
        abs.source_files = 'FRKDataProvider/*.{h,m}'
    end
    
    spec.subspec 'CollectionView' do |cvs|
        cvs.source_files = 'FRKDataProvider/UICollectionView/*.{h,m}'
    end
    
    spec.subspec 'TableView' do |tvs|
        tvs.source_files = 'FRKDataProvider/TableView/*.{h,m}'
    end
end