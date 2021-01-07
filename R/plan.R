the_plan <-
  drake_plan(
    raw_phenotypes = get_rawphenotypes(),
    #TODO: When raw_genotype is online make a download script
    raw_genotypes = get_rawgenotypes(),
    markers = get_markers(),
    array_id = get_arrayid(),
    sample_index = get_sampleindex(),
    genofile = create_genofile(raw_genotypes, markers,array_id),
    gmapfile = create_gmapfile(genofile),
    pmapfile = create_pmapfile(genofile),
    foundergenofile = create_foundergenofile(genofile),
    phenotypes = calculate_phenotypes(raw_phenotypes),
    phenofile = create_phenotypes(phenotypes,sample_index),
    controlfile = create_control(),
    # # create_zipfile needs to make the zip and output the directory
    create_zipfile = zip_datafiles(genofile,gmapfile,pmapfile,foundergenofile,phenofile,controlfile),
    do_malaria = read_cross2(create_zipfile),
    map = insert_pseudomarkers(do_malaria$gmap, step=1),
    pr = calc_genoprob(do_malaria,map, quiet=FALSE,  error_prob=0.002),
    # apr = genoprob_to_alleleprob(pr),
    # kinship = calc_kinship(apr,
    # type= "overall",
    # omit_x=FALSE,
    # use_allele_probs= TRUE,
    # quiet=FALSE),
    # scan = scan1(pr, iron$pheno, Xcovar=Xcovar),
    # permutations = scan1perm(pr, do_malaria$pheno, Xcovar=Xcovar, n_perm=1000),
    # The individual parental contribution need to be calculated for each phenotype as well as the gene contributions.
    fig1 = create_fig1(phenotypes),
    fig2 = create_fig2(phenotypes),
    fig3 = create_fig3(),
    fig4 = create_fig4(),
    fig5 = create_fig5(),
    supfig1 = create_supfig1(),
    supfig2 = create_supfig2(),
    target_name = target(
      command = {
        rmarkdown::render(knitr_in("doc/manuscript.Rmd"))
        file_out("doc/manuscript.html")
      }
    )

    #TODO: Fill out metadata


  )
