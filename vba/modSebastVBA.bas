
' Transforma uma seleção de células que representam uma
' tabela pivotada em uma tabela normal, em que a primeira
' linha da tabela contém dados e não rótulos e as linhas.
'
' Posto de outra forma,
'
' selecao...: conjunto de celulas selecionadas para despivotear

Function Despivota2D(selecao As range) As Range
On Error GoTo TrataErro

' Melhorias:
' - indicar ordem de despivoteamento (pela coluna ou pela linha)
' - informar os rótulos da tabela resultante
' - despivotear conjunto de abas (Despivota3D)
' - tratar seleções que não são matrizes (células não contínuas)
' - tratar tipo de dados e faixa de valores válidos

Dim i, j                            As Integer
Dim qtdLinDados, qtdColDados        As Integer
Dim numLinDespivotada               As Integer
Dim selecaoDespivotada              As Variant
 
    ' a primeira linha e a primeira coluna são considerada
    ' de rótulos. as demais células são de dados
    qtdLinDados = selecao.Rows.Count - 1
    qtdColDados = selecao.Columns.Count - 1
    
    ' O despivoteamento de um matriz de m linhas por n colunas
    ' irá produzir uma tabela de (m-1)x(n-1) linhas por 3 colunas.
    ' Com base nisso é feito o redimensionamento abaixo    
    ReDim selecaoDespivotada(1 To qtdLinDados * qtdColDados, 1 To 3)

    ' Varre a tabela pivoteada, célula a célula, construindo 
    ' a tabela despivoteada
    For i = 1 To qtdLinDados
        For j = 1 To qtdColDados
        
            numLinDespivotada = numLinDespivotada + 1

            selecaoDespivotada(numLinDespivotada, 1) = selecao.Cells(i + 1, 1)
            selecaoDespivotada(numLinDespivotada, 2) = selecao.Cells(1, j + 1)
            selecaoDespivotada(numLinDespivotada, 3) = selecao.Cells(i + 1, j + 1)
        
        Next j
    Next i
    
    ' Retorna um Variant (Range) correspondente à tabela despivoteada
    Despivota2D = selecaoDespivotada
    
    Exit Function
    
TrataErro:
    Call Err.Raise(Err)
    
End Function

