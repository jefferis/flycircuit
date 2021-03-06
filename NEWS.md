# flycircuit 0.6.9

* new functions `fc_read_neurons()` to read traced skeletons from the flycircuit
  website, `fc_get_ids()` to get a list of neuron identifiers, 
  `fc_page()` to see the details page for a neuron (#44)
  (thanks to @alexanderbates)
* Fix FCWBNP.surf by updating to nat.flybrains version (#43)
* switch to natverse github organisation 

# flycircuit 0.6.8

* Ensure that flycircuit package can be installed from github with development
  versions of all its dependencies (fixes to github remotes etc). This was as a
  result of difficulties installing on the VFB opencpu docker instance.
* dev: fixes to travis build configuration (switch to non sudo trusty dist)

# flycircuit 0.6.7

* Update annotation database (1 August 2016, now 7021 NeuronType annotations)

# flycircuit 0.6.6

* Add fc_neuron_type
* Add online docs with pkgdown
* Insist on nat >= 1.8.8

# flycircuit 0.6.5

* update annotation database (1 April 2015, now 6565 NeuronType annotations)
* add fc_glom function to find antennal lobe glomeruli for fc neurons
* dev: update to roxygen2 v4.1.1

# flycircuit 0.6.4

* update annotation database

# flycircuit 0.6.3

* load_si_data works with bigmat pairs of the form x.desc+x.bin
* load_si_data no longer attempts to check for object existence
* doc: load_si_data improvements
* dev: fix check errors

# flycircuit 0.6.2

* depend on nat

# flycircuit 0.6.1

* fix bug when creating data directories (based on rappdirs location) on a new
  system

# flycircuit 0.6

* Store persistent data in directory determined by rappdirs package
* add load_si_data
* add plot3d.APResult
* Add apclusterfc
* fc_download_data (always) returns path to file
* ... and can use local file (with warning) if remote url unreadable
* ... plus additional bug fixes
* add as.data.frame.APResult for affinity propagation clustering results
* fc_nblast normalises like sub_score_mat

# flycircuit 0.5.3

* add fc_sex utility function to find sex of animal for any valid flycircuit
  neuron identifier.
* give hclustfc an unsquare argument

# flycircuit 0.5.2

* fix subtle bug in plot3dfc revealed only when this is used inside a function.
* plot3dfc can now accept a character vector for the db argument.

# flycircuit 0.5.1

* fix hclustfc (was not attaching scoremat)
* refactor fc_subscoremat (using nat.nblast::sub_score_mat)
* dev: remove internal diagonal function and tests

# flycircuit 0.5

* deprecated pop3dfc in favour of nat::npop3d
* refactored plot3dfc to use nat::plot3d.character. plot3dfc will be deprecated
  in favour of plot3d.character when that function can coped with multiple
  identifier styles.

# flycircuit 0.4.1

* extensive refactoring so that fc_nblast, hclustfc and friends are now thin
  wrappers on more generic functions in nat.nblast
* plot3dfc can handle NA soma positions
* update annotation table
* docs: plot3dfc improvements
* add fcgn_forfile

# flycircuit 0.3.1

* significant (20x in my tests) speedup for hclustfc using large ff objects
  containing raw scores.

# flycircuit 0.3

* ready for use by external code
* add subset.hclust, plot3d.hclust
* make sure that clustering based on pre-computed nblast scores all works 
  properly and that ff cached versions of the data are available
* only provide ff cached versions of raw scores for download and normalise on
  the fly
* fix errors in package vignette
