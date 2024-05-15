.class public Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;
.super Ljava/lang/Object;
.source "X509NameTokenizer.java"


# instance fields
.field private buf:Ljava/lang/StringBuffer;

.field private index:I

.field private separator:C

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "oid"    # Ljava/lang/String;

    .prologue
    .line 20
    const/16 v0, 0x2c

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;-><init>(Ljava/lang/String;C)V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;C)V
    .registers 4
    .param p1, "oid"    # Ljava/lang/String;
    .param p2, "separator"    # C

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    .line 27
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->value:Ljava/lang/String;

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->index:I

    .line 29
    iput-char p2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->separator:C

    .line 30
    return-void
.end method


# virtual methods
.method public hasMoreTokens()Z
    .registers 3

    .prologue
    .line 34
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->index:I

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public nextToken()Ljava/lang/String;
    .registers 9

    .prologue
    const/16 v7, 0x2b

    const/16 v6, 0x5c

    .line 39
    iget v4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->index:I

    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_10

    .line 41
    const/4 v4, 0x0

    return-object v4

    .line 44
    :cond_10
    iget v4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->index:I

    add-int/lit8 v1, v4, 0x1

    .line 45
    .local v1, "end":I
    const/4 v3, 0x0

    .line 46
    .local v3, "quoted":Z
    const/4 v2, 0x0

    .line 48
    .local v2, "escaped":Z
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 50
    .end local v3    # "quoted":Z
    :goto_1c
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_53

    .line 52
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 54
    .local v0, "c":C
    const/16 v4, 0x22

    if-ne v0, v4, :cond_3b

    .line 56
    if-nez v2, :cond_32

    .line 58
    xor-int/lit8 v3, v3, 0x1

    .line 60
    :cond_32
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 61
    const/4 v2, 0x0

    .line 95
    :goto_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 65
    :cond_3b
    if-nez v2, :cond_3f

    if-eqz v3, :cond_46

    .line 67
    :cond_3f
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 68
    const/4 v2, 0x0

    goto :goto_38

    .line 70
    :cond_46
    if-ne v0, v6, :cond_4f

    .line 72
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 73
    const/4 v2, 0x1

    goto :goto_38

    .line 75
    :cond_4f
    iget-char v4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->separator:C

    if-ne v0, v4, :cond_5c

    .line 98
    .end local v0    # "c":C
    :cond_53
    iput v1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->index:I

    .line 100
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 83
    .restart local v0    # "c":C
    :cond_5c
    const/16 v4, 0x23

    if-ne v0, v4, :cond_7d

    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    const/16 v5, 0x3d

    if-ne v4, v5, :cond_7d

    .line 85
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 92
    :cond_77
    :goto_77
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_38

    .line 87
    :cond_7d
    if-ne v0, v7, :cond_77

    iget-char v4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->separator:C

    if-eq v4, v7, :cond_77

    .line 89
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_77
.end method
