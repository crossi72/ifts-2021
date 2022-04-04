--elementi strutturali
--carico una riga del preventivo per valorizzare il campo descrittivo degli elementi strutturali
SELECT TOP 1 cliRagioneSociale, cliIndirizzo, cliCap, cliLocalita, cliProvincia, cliAnticipoPercentuale, anticipiTipi.patDescrizione AS anticipoTipo, anticipiScadenze.pasDescrizione AS anticipoScadenza, saldiTipi.patDescrizione AS saldoTipo, saldiScadenze.pasDescrizione AS saldoScadenza, nazDescrizione, proReferenteCliente, manNome, manAnno, manLuogo, dcrID, docStruttura AS dcrArticoloDescrizioneCliente,
0 AS dcrQuantita, arcID, ISNULL(arcDescrizione, '') as arcDescrizione, dcrArticoloTipo, 0 AS dcrDimensioneBase, 0 AS dcrDimensioneAltezza, 0 AS dcrDimensioneMQ, 0 AS dcrPrezzoVendita, 0 AS dcrPrezzoVenditaUnitario, 0 AS dcrFlagNascondi, 0 AS dcrFlagOpzione,
docID, docTipo, docCodicePreventivo, docNumeroProgetto, docImportoPreventivo, docImportoPreventivoLettere, 0 AS docImportoScontato, '' AS docImportoScontatoLettere, docGiorniValidita, docVarieVostroCarico,
docFlagArredi, docFlagImpiantoElettrico, docFlagDecorazioneFloreale, docFlagGrafica, docFlagGraficaComputataConsuntivo, docFlagAllacciamentoElettrico1, docFlagAllacciamentoElettrico2, docFlagAllacciamentoElettrico3, docFlagAllacciamentoIdrico, docFlagSmaltimentoMaterialiRisulta, docFlagEstintori, docFlagPermessi, docFlagTuttoCio, docFlagOpzioni, docFlagOneriCaricoScarico, docFlagRivestimentoPavimento,
docFlagServiziAllacciamentoElettrico, docFlagServiziProgettazioneGrafica, docFlagServiziProgettazioneContributiMultimediali, docFlagServiziRealtaAumentata, docFlagServiziIntegrativi1, docFlagServiziIntegrativi2, docFlagNoleggio, docFlagMontaggio, docFlagSmontaggio, docFlagTrasporto,
cecID, 'Elementi strutturali' AS cecDescrizione, -1 AS cecOrdineStampa, ISNULL(dcvDescrizione, '') AS dcvDescrizione, docStruttura, unmDescrizione, docFlagMostraTrasportiInPreventivo, docDescrizioneServiziTecnici, dcrOrdineStampa AS ordine
FROM documentiCliente
INNER JOIN documentiClienteRighe ON docID = dcrDocumentoCliente
INNER JOIN progetti ON proID = docProgetto
INNER JOIN manifestazioni ON manID = proManifestazione
INNER JOIN clienti ON cliID = proCliente
LEFT OUTER JOIN unitaMisura ON unmID = dcrArticoloUnitaMisura
LEFT OUTER JOIN nazioni ON nazID = cliNazione
LEFT OUTER JOIN articoli ON artID = dcrArticolo
LEFT OUTER JOIN articoliCategorie ON arcID = dcrArticoloCategoria
LEFT OUTER JOIN centriCosto ON cecID = arcCentroCosto
LEFT OUTER JOIN documentiClienteVarie ON docID = dcvDocumentoCliente AND cecID = dcvCentroCosto
LEFT OUTER JOIN pagamentiTipi anticipiTipi ON anticipiTipi.patID = cliAnticipoTipoPagamento
LEFT OUTER JOIN pagamentiScadenze anticipiScadenze ON anticipiScadenze.pasID = cliAnticipoScadenza
LEFT OUTER JOIN pagamentiTipi saldiTipi ON saldiTipi.patID = cliSaldoTipoPagamento
LEFT OUTER JOIN pagamentiScadenze saldiScadenze ON saldiScadenze.pasID = cliSaldoScadenza
WHERE (documentiCliente.Annullato = 0 OR documentiCliente.Annullato IS NULL)
AND (documentiClienteRighe.Annullato = 0 OR documentiClienteRighe.Annullato IS NULL)
--evito di caricare una riga nascosta perché il report nasconderebbe la sezione "elementi strutturali"
AND dcrFlagNascondi = 0
AND [filter]

UNION

--articoli normali
SELECT cliRagioneSociale, cliIndirizzo, cliCap, cliLocalita, cliProvincia, cliAnticipoPercentuale, anticipiTipi.patDescrizione AS anticipoTipo, anticipiScadenze.pasDescrizione AS anticipoScadenza, saldiTipi.patDescrizione AS saldoTipo, saldiScadenze.pasDescrizione AS saldoScadenza, nazDescrizione, proReferenteCliente, manNome, manAnno, manLuogo, dcrID, dcrArticoloDescrizioneCliente,
dcrQuantita, arcID, ISNULL(arcDescrizione, '') as arcDescrizione, dcrArticoloTipo, dcrDimensioneBase, dcrDimensioneAltezza, dcrDimensioneMQ, dcrPrezzoVendita, dcrPrezzoVenditaUnitario, dcrFlagNascondi, dcrFlagOpzione,
docID, docTipo, docCodicePreventivo, docNumeroProgetto, docImportoPreventivo, docImportoPreventivoLettere, 0 AS docImportoScontato, '' AS docImportoScontatoLettere, docGiorniValidita, docVarieVostroCarico,
docFlagArredi, docFlagImpiantoElettrico, docFlagDecorazioneFloreale, docFlagGrafica, docFlagGraficaComputataConsuntivo, docFlagAllacciamentoElettrico1, docFlagAllacciamentoElettrico2, docFlagAllacciamentoElettrico3, docFlagAllacciamentoIdrico, docFlagSmaltimentoMaterialiRisulta, docFlagEstintori, docFlagPermessi, docFlagTuttoCio, docFlagOpzioni, docFlagOneriCaricoScarico, docFlagRivestimentoPavimento,
docFlagServiziAllacciamentoElettrico, docFlagServiziProgettazioneGrafica, docFlagServiziProgettazioneContributiMultimediali, docFlagServiziRealtaAumentata, docFlagServiziIntegrativi1, docFlagServiziIntegrativi2, docFlagNoleggio, docFlagMontaggio, docFlagSmontaggio, docFlagTrasporto,
cecID, IIF(cecID = 38, 'Elementi strutturali', ISNULL(cecDescrizione, '')) AS cecDescrizione, IIF(cecID = 38, -1, ISNULL(cecOrdineStampa, 100)) AS cecOrdineStampa, ISNULL(dcvDescrizione, '') AS dcvDescrizione, docStruttura, unmDescrizione, docFlagMostraTrasportiInPreventivo, docDescrizioneServiziTecnici, dcrOrdineStampa AS ordine
FROM documentiCliente
INNER JOIN documentiClienteRighe ON docID = dcrDocumentoCliente
INNER JOIN progetti ON proID = docProgetto
INNER JOIN manifestazioni ON manID = proManifestazione
INNER JOIN clienti ON cliID = proCliente
LEFT OUTER JOIN unitaMisura ON unmID = dcrArticoloUnitaMisura
LEFT OUTER JOIN nazioni ON nazID = cliNazione
LEFT OUTER JOIN articoli ON artID = dcrArticolo
LEFT OUTER JOIN articoliCategorie ON arcID = dcrArticoloCategoria
LEFT OUTER JOIN centriCosto ON cecID = arcCentroCosto
LEFT OUTER JOIN documentiClienteVarie ON docID = dcvDocumentoCliente AND cecID = dcvCentroCosto
LEFT OUTER JOIN pagamentiTipi anticipiTipi ON anticipiTipi.patID = cliAnticipoTipoPagamento
LEFT OUTER JOIN pagamentiScadenze anticipiScadenze ON anticipiScadenze.pasID = cliAnticipoScadenza
LEFT OUTER JOIN pagamentiTipi saldiTipi ON saldiTipi.patID = cliSaldoTipoPagamento
LEFT OUTER JOIN pagamentiScadenze saldiScadenze ON saldiScadenze.pasID = cliSaldoScadenza
WHERE (documentiCliente.Annullato = 0 OR documentiCliente.Annullato IS NULL)
AND (documentiClienteRighe.Annullato = 0 OR documentiClienteRighe.Annullato IS NULL)
AND [filter]

UNION 

--trasporti
SELECT cliRagioneSociale, cliIndirizzo, cliCap, cliLocalita, cliProvincia, cliAnticipoPercentuale, anticipiTipi.patDescrizione AS anticipoTipo, anticipiScadenze.pasDescrizione AS anticipoScadenza, saldiTipi.patDescrizione AS saldoTipo, saldiScadenze.pasDescrizione AS saldoScadenza, nazDescrizione, proReferenteCliente, manNome, manAnno, manLuogo, -1 * traID AS dcrID, 'servizio di trasporto andata e ritorno' AS dcrArticoloDescrizioneCliente,
traNumeroMezzi AS dcrQuantita, 0 AS arcID, '' as arcDescrizione, 1 AS dcrArticoloTipo, 0 AS dcrDimensioneBase, 0 AS dcrDimensioneAltezza, 0 AS dcrDimensioneMQ, traTotalePrezzoVendita AS dcrPrezzoVendita, 0 AS dcrPrezzoVenditaUnitario, 0 AS dcrFlagNascondi, 0 AS dcrFlagOpzione,
docID, docTipo, docCodicePreventivo, docNumeroProgetto, docImportoPreventivo, docImportoPreventivoLettere, 0 AS docImportoScontato, '' AS docImportoScontatoLettere, docGiorniValidita, docVarieVostroCarico,
docFlagArredi, docFlagImpiantoElettrico, docFlagDecorazioneFloreale, docFlagGrafica, docFlagGraficaComputataConsuntivo, docFlagAllacciamentoElettrico1, docFlagAllacciamentoElettrico2, docFlagAllacciamentoElettrico3, docFlagAllacciamentoIdrico, docFlagSmaltimentoMaterialiRisulta, docFlagEstintori, docFlagPermessi, docFlagTuttoCio, docFlagOpzioni, docFlagOneriCaricoScarico, docFlagRivestimentoPavimento,
docFlagServiziAllacciamentoElettrico, docFlagServiziProgettazioneGrafica, docFlagServiziProgettazioneContributiMultimediali, docFlagServiziRealtaAumentata, docFlagServiziIntegrativi1, docFlagServiziIntegrativi2, docFlagNoleggio, docFlagMontaggio, docFlagSmontaggio, docFlagTrasporto,
CASE WHEN docFlagMostraTrasportiInPreventivo = 1 THEN [centro_costo_trasporti] ELSE -1 END AS cecID, 'Trasporti' AS cecDescrizione, 100 AS cecOrdineStampa, '' AS dcvDescrizione, docStruttura, '' AS unmDescrizione, docFlagMostraTrasportiInPreventivo, docDescrizioneServiziTecnici, 1 AS ordine
FROM documentiCliente
INNER JOIN progetti ON proID = docProgetto
INNER JOIN manifestazioni ON manID = proManifestazione
INNER JOIN clienti ON cliID = proCliente
INNER JOIN trasporti ON docID = traDocumentoCliente
LEFT OUTER JOIN nazioni ON nazID = cliNazione
LEFT OUTER JOIN pagamentiTipi anticipiTipi ON anticipiTipi.patID = cliAnticipoTipoPagamento
LEFT OUTER JOIN pagamentiScadenze anticipiScadenze ON anticipiScadenze.pasID = cliAnticipoScadenza
LEFT OUTER JOIN pagamentiTipi saldiTipi ON saldiTipi.patID = cliSaldoTipoPagamento
LEFT OUTER JOIN pagamentiScadenze saldiScadenze ON saldiScadenze.pasID = cliSaldoScadenza
WHERE docFlagTrasporto = 1
AND trasporti.Annullato = 0
AND documentiCliente.Annullato = 0
AND [filter]
