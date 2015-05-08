function [ClusterCenters,DataClusters,DatainClusters] = Clustering_MeanShift(DataValues,Band)
%% Function Clustering_MeanShift clusters data by Mean Shift approach using flat kernel

% INPUTs
% DataValues        : [nDim x nSamples] input data matrix
% Band              : is Band parameter (scalar)

% ---OUTPUTs---
% ClusterCenters    : [nDim x nClusters] locations of cluster centers matrix
% DataClusters      : clusters for each data
% DatainClusters    : data in clusters for each cluster
%
% Edmondo Minisci 2013

% Ref. : K. Funkunaga and L.D. Hosteler, "The Estimation of the Gradient of a Density Function, with Applications in Pattern Recognition"



%  Initialisation
[nDim,nSamples] = size(DataValues);
nClusters        = 0;
BandSquare          = Band^2;
SamplesV      = 1:nSamples;

searchToll      = 1e-3*Band;
ClusterCenters       = [];
visitedPoints = zeros(1,nSamples,'uint8');
nInitialisationSamples      = nSamples;
ClusterOpt    = zeros(1,nSamples,'uint16');


while nInitialisationSamples
    
    randPoint         = ceil( (nInitialisationSamples-1e-6)*rand);
    startPoint           = SamplesV(randPoint);
    ClusterMean          = DataValues(:,startPoint);
    ClusterMembers       = [];
    CurrClusterOpt    = zeros(1,nSamples,'uint16');
    
    while true
        
        SqDist = sum((repmat(ClusterMean,1,nSamples) - DataValues).^2);
        PointsInBand      = find(SqDist < BandSquare);
        CurrClusterOpt(PointsInBand) = CurrClusterOpt(PointsInBand)+1;
        
        
        OldMean   = ClusterMean;
        ClusterMean      = mean(DataValues(:,PointsInBand),2);
        ClusterMembers   = [ClusterMembers PointsInBand];
        visitedPoints(ClusterMembers) = 1;
        
        
        if norm(ClusterMean-OldMean) < searchToll
            
            
            Merge = 0;
            for inClusters = 1:nClusters
                Distance = norm(ClusterMean-ClusterCenters(:,inClusters));
                if Distance < Band/2
                    Merge = inClusters;
                    break;
                end
            end
            
            
            if Merge > 0
                ClusterCenters(:,Merge)       = 0.5*(ClusterMean+ClusterCenters(:,Merge));
                ClusterOpt(Merge,:)    = ClusterOpt(Merge,:) + CurrClusterOpt;
            else
                nClusters                    = nClusters+1;
                ClusterCenters(:,nClusters)       = ClusterMean;
                ClusterOpt(nClusters,:)    = CurrClusterOpt;
            end
            break;
        end
        
    end
    
    
    SamplesV = find(visitedPoints == 0);
    nInitialisationSamples = length(SamplesV);
end

[dummy,DataClusters] = max(ClusterOpt,[],1);


if nargout > 2
    DatainClusters = cell(nClusters,1);
    for inClusters = 1:nClusters
        ClusterMembers = find(DataClusters == inClusters);
        DatainClusters{inClusters} = ClusterMembers;
    end
end


