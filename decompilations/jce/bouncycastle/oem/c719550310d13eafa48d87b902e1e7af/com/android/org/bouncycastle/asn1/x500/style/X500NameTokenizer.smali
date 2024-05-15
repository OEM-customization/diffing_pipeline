.class public Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;
.super Ljava/lang/Object;
.source "X500NameTokenizer.java"


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
    .line 19
    const/16 v0, 0x2c

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;C)V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;C)V
    .registers 4
    .param p1, "oid"    # Ljava/lang/String;
    .param p2, "separator"    # C

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->buf:Ljava/lang/StringBuffer;

    .line 26
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    .line 28
    iput-char p2, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->separator:C

    .line 29
    return-void
.end method


# virtual methods
.method public hasMoreTokens()Z
    .registers 3

    .prologue
    .line 33
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

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
    .registers 7

    .prologue
    .line 38
    iget v4, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_c

    .line 40
    const/4 v4, 0x0

    return-object v4

    .line 43
    :cond_c
    iget v4, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    add-int/lit8 v1, v4, 0x1

    .line 44
    .local v1, "end":I
    const/4 v3, 0x0

    .line 45
    .local v3, "quoted":Z
    const/4 v2, 0x0

    .line 47
    .local v2, "escaped":Z
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->buf:Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 49
    .end local v3    # "quoted":Z
    :goto_18
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_51

    .line 51
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 53
    .local v0, "c":C
    const/16 v4, 0x22

    if-ne v0, v4, :cond_37

    .line 55
    if-nez v2, :cond_2e

    .line 57
    xor-int/lit8 v3, v3, 0x1

    .line 59
    :cond_2e
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 60
    const/4 v2, 0x0

    .line 83
    :goto_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 64
    :cond_37
    if-nez v2, :cond_3b

    if-eqz v3, :cond_42

    .line 66
    :cond_3b
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 67
    const/4 v2, 0x0

    goto :goto_34

    .line 69
    :cond_42
    const/16 v4, 0x5c

    if-ne v0, v4, :cond_4d

    .line 71
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 72
    const/4 v2, 0x1

    goto :goto_34

    .line 74
    :cond_4d
    iget-char v4, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->separator:C

    if-ne v0, v4, :cond_5a

    .line 86
    .end local v0    # "c":C
    :cond_51
    iput v1, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    .line 88
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 80
    .restart local v0    # "c":C
    :cond_5a
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_34
.end method
