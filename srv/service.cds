using { CAPSampleA as my } from '../db/schema';

@path : '/service/CAP_Sample_A'
service SampleServiceService
{
    entity Products as
        projection on my.Products;

    @odata.draft.enabled
    entity Suppliers as
        projection on my.Suppliers;
}

annotate SampleServiceService with @requires :
[
    'authenticated-user'
];
