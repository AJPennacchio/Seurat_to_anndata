srt <- readRDS("XNEU2-B1_cb_merged_processed.rds")

sceasy::convertFormat(srt, from="seurat", to="anndata",
                      outFile='merged.h5ad')


