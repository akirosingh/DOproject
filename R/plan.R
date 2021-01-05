the_plan <-
  drake_plan(
    raw_phenotypes = get_raw_phenotypes(),
    create_genofile = get_rawgenotypes(),
    create_founder_genofile = get_rawfoundergenotypes(),
    create_covarfile = get_rawcovar(),
    create_phenocovarfile = get_phenocovar(),
    create_gmapfile = get_gmap(),
    create_pmapfile = get_pmap(),
    # phenotypes = calculate_phenotypes(append_phenotypes),
    # create_phenofile = create_phenotypes(phenotypes),
    # create_controlfile = create_control(),
    # # create_zipfile needs to make the zip and output the directory
    # create_zipfile = zip_datafiles(),
    # do_malaria = read_cross2(create_zipfile),
    # map = insert_pseudomarkers(do_malaria$gmap, step=1)
    # pr = calc_genoprob(do_malaria,map, error_prob=0.002),
    # apr = genoprob_to_alleleprob(pr)
    # kinship = calc_kinship(pr),
    # scan = scan1(pr, iron$pheno, Xcovar=Xcovar),
    # permutations = scan1perm(pr, do_malaria$pheno, Xcovar=Xcovar, n_perm=1000),
    # The individual parental contribution need to be calculated for each phenotype as well as the gene contributions.
    # fig1 = create_fig1(),
    # fig2 = create_fig2(),
    # fig3 = create_fig3(),
    # fig4 = create_fig4(),
    # fig5 = create_fig5(),
    # supfig1 = create_supfig1(),
    # supfig2 = create_supfig2(),
    target_name = target(
      command = {
        rmarkdown::render(knitr_in("doc/manuscript.Rmd"))
        file_out("doc/manuscript.html")
      }
    )




)
