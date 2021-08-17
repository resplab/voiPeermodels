# set.seed(1) 
# nsam <- 10000
# inputs <- data.frame(p1 = rnorm(nsam, 1, 1), 
#                      p2 = rnorm(nsam, 0, 2))
# outputs_nb <- data.frame(t1 = 0, 
#                          t2 = inputs$p1 - inputs$p2)

evpi.remote <- function(outputs, nsim) {
  model_input <- list(outputs=outputs, nsim=nsim, func='evpi')
  res <- model_run(model_name='voiPrism', model_input, api_key='', server='')
  return(res)
}

evppi.remote <- function(outputs, inputs, pars, se, B, nsim, verbose, method, ...) {
  model_input <- list(outputs=outputs, inputs=inputs, pars=pars, se=se, B=B, nsim=nsim, verbose=verbose, func='evppi', method=method, etc=...)
  res <- model_run(model_name='voiPrism', model_input, api_key='', server='')
  return(res)
}

evppi_mc.remote <- function(model_fn, par_fn, pars, nouter, ninner, wtp, mfargs, verbose) {
  model_input <- list(model_fn=model_fn, par_fn=par_fn, pars=pars, nouter=nouter, ninner=ninner, wtp=wtp, mfargs=mfargs, verbose=verbose, func='evppi_mc')
  res <- model_run(model_name='voiPrism', model_input, api_key='', server='')
  return(res)
}

evsi.remote <- function(outputs, inputs, study, datagen_fn, pars, n, likelihood, analysis_model, analysis_options, decision_model, Q, npreg_method, nsim, verbose, method, ...) {
  model_input <- list(outputs=outputs, inputs=inputs, study=study, datagen_fn=datagen_fn, pars=pars, n=n, likelihood=likelihood, analysis_model=analysis_model, analysis_options=analysis_options, decision_model=decision_model, Q=Q, npreg_method=npreg_method, nsim=nsim, verbose=verbose, func='evsi', method=method, etc=...)
  res <- model_run(model_name='voiPrism', model_input, api_key='', server='')
  return(res)
}

evsivar.remote <- function(outputs, inputs, study, datagen_fn, pars, n, likelihood, analysis_model, analysis_options, decision_model, Q, npreg_method, nsim, verbose, method, ...) {
  model_input <- list(outputs=outputs, inputs=inputs, study=study, datagen_fn=datagen_fn, pars=pars, n=n, likelihood=likelihood, analysis_model=analysis_model, analysis_options=analysis_options, decision_model=decision_model, Q=Q, npreg_method=npreg_method, nsim=nsim, verbose=verbose, func='evsivar', method=method, etc=...)
  res <- model_run(model_name='voiPrism', model_input, api_key='', server='')
  return(res)
}
