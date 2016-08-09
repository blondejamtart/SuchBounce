for n =  192
    for i = 1:5
        root = ['binary_' num2str(n) '_' num2str(i) '/'];
        eval(['mkdir ' root])
        eval(['mkdir ' root '/Setup'])
        filewrite([root 'q.vec'],zeros(1,n),'init')
        filewrite([root 'm.vec'],[1e-2*ones(1,n-2) 1e4*(sqrt(n/1024))^3 1e4*(sqrt(n/1024))^3],'init')
        filewrite([root 'rad.vec'],[1e-2*ones(1,n-2) sqrt(n/1024) sqrt(n/1024)],'init')
        r = random_seed(n,[1e-2*ones(1,n-2) sqrt(n/1024) sqrt(n/1024)]);
        filewrite([root 'r.vec'],r,'init')
        filewrite([root 'v.vec'],zeros(1,n,3),'init')
        filewrite([root 'w.vec'],zeros(1,n,3),'init')
    end
end