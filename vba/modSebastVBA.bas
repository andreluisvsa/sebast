Option Base 0
Option Explicit


' Transforma uma seleção de células que representam uma
' tabela pivotada em uma tabela normal, em que a primeira
' linha da tabela contém dados e não rótulos e as linhas.
'
' Posto de outra forma,
'
' selecao...: conjunto de celulas selecionadas para despivotear
' rotulos...: nomes das colunas a serem incluídos na tabela
'             primeira linha da tabela resultante
' tipo......: define a estratégia de despivoteamento. Por
'             padrão mantém a primeira coluna e vai repetindo
'             as demais colunas com seus respectivos dados

Function Despivota2D(selecao As Range) As Variant
On Erro GoTo TrataErro

' Melhorias:
' - indicar ordem de despivoteamento (pela coluna ou pela linha)
' - informar os rótulos da tabela resultante
' - despivotear conjunto de abas
' - tratar seleções que não são matrizes (células contínuas)
' - tratar tipo de dados

Dim i, j As Integer
Dim qtdLinhasSelecao, qtdColunasSelecao As Integer
Dim qtdLinhasDespivotada As Integer
Dim selecaoDespivotada As Variant
    
    qtdLinhasSelecao = selecao.Rows.Count
    qtdColunasSelecao = selecao.Rows.Count
    qtdLinhasDespivotada = (qtdLinhasSelecao - 1) * (qtdColunasSelecao - 1)
    
    ' O despivoteamento de um matriz de m linhas por n colunas
    ' irá produzir uma tabela de (m-1)x(n-1) linhas por 3 colunas.
    ' Com base nisso é feito o redimensionamento abaixo
    
    ReDim selecaoDespivotada(0 To qtdLinhasDespivotada, 0 To 2)
    
    ' Faz a transposição da tabela pivoteada:
    '    i: linha na tabela despivotada
    '    j: coluna na tabela pivotada
    '    k: linha na tabela pivotada, calculado em função de i
    For i = 0 To qtdLinhasDespivotada
        For j = 1 To qtdColunasSelecao
    
        k = (qtdLinhasSelecao - 1) Mod i
        
        selecaoDespivotada(i, 0) = selecao.Cells(k + 1, 0)
        selecaoDespivotada(i, 1) = selecao.Cells(0, j)
        selecaoDespivotada(i, 2) = selecao.Cells(k + 1, j)
        
        Next j
    Next i
    
    Despivota2D = selecaoDespivotada
    
    Exit Function
    
TrataErro:
    Call Raise(Err)
    
End Function