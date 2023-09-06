' modUtil.bas
'
' Funções utilitárias de uso geral, não específicas à STUE, para
' apoiar o tratamento de dados
'
' Melhorias DespivotaTabela:
' - indicar ordem de despivoteamento (pela coluna ou pela linha)
' - informar os rótulos da tabela resultante
' - despivotear conjunto de abas (Despivota3D)
' - tratar seleções que não são matrizes (células não contínuas)
' - tratar tipo de dados e faixa de valores válidos

' --------------------------------------------------------------
' Transforma uma seleção de células que representam uma tabela
' pivotada em uma tabela normal, em que a primeira  linha da
' tabela contém dados e não rótulos e as linhas.
'
' Parâmetros:
' - tabelaPivotada....: conjunto de células (range) com a tabela
'                       pivotada

Public Function DespivotaSelecao(tabelaPivotada As Range) As Variant
On Error GoTo TrataErro

Dim i, j                            As Integer
Dim qtdLinDados, qtdColDados        As Integer
Dim numLinDespivotada               As Integer
Dim tabelaDespivotada               As Variant

    ' A primeira linha e a primeira coluna da selecao são considerada
    ' de rótulos. As demais células são de dados
    qtdLinDados = tabelaPivotada.Rows.Count - 1
    qtdColDados = tabelaPivotada.Columns.Count - 1
    
    ' O despivoteamento de um matriz de m linhas por n colunas
    ' irá produzir uma tabela de (m-1)x(n-1) linhas por 3 colunas.
    ' Com base nisso é feito o redimensionamento abaixo
    ReDim tabelaDespivotada(1 To qtdLinDados * qtdColDados, 1 To 3)

    ' Varre a tabela pivoteada, célula a célula, construindo
    ' a tabela despivoteada
    For i = 1 To qtdLinDados
        For j = 1 To qtdColDados
        
            numLinDespivotada = numLinDespivotada + 1

            tabelaDespivotada(numLinDespivotada, 1) = _
                                    tabelaPivotada.Cells(i + 1, 1)
            tabelaDespivotada(numLinDespivotada, 2) = _
                                    tabelaPivotada.Cells(1, j + 1)
            tabelaDespivotada(numLinDespivotada, 3) = _
                                    tabelaPivotada.Cells(i + 1, j + 1)
        
        Next j
    Next i
    
    ' Retorna um Variant (Range) correspondente à tabela despivoteada
    DespivotaSelecao = tabelaDespivotada
    
    Exit Function
    
TrataErro:
    
    Debug.Print "................: " & Now & vbCrLf & _
                "Err.Source......: " & Err.Source & vbCrLf & _
                "Err.Number......: " & Err.Number & vbCrLf & _
                "Err.Description.: " & Err.Description
    
    Call Err.Raise(Err)
    
End Function


