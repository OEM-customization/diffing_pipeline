.class Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Formatter$FormatSpecifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BigDecimalLayout"
.end annotation


# instance fields
.field private greylist-max-o dot:Z

.field private greylist-max-o exp:Ljava/lang/StringBuilder;

.field private greylist-max-o mant:Ljava/lang/StringBuilder;

.field private greylist-max-o scale:I

.field final synthetic blacklist this$1:Ljava/util/Formatter$FormatSpecifier;


# direct methods
.method public constructor blacklist <init>(Ljava/util/Formatter$FormatSpecifier;Ljava/math/BigInteger;ILjava/util/Formatter$BigDecimalLayoutForm;)V
    .registers 5
    .param p2, "intVal"    # Ljava/math/BigInteger;
    .param p3, "scale"    # I
    .param p4, "form"    # Ljava/util/Formatter$BigDecimalLayoutForm;

    .line 3786
    iput-object p1, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->this$1:Ljava/util/Formatter$FormatSpecifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3783
    const/4 p1, 0x0

    iput-boolean p1, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->dot:Z

    .line 3787
    invoke-direct {p0, p2, p3, p4}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->layout(Ljava/math/BigInteger;ILjava/util/Formatter$BigDecimalLayoutForm;)V

    .line 3788
    return-void
.end method

.method private greylist-max-o layout(Ljava/math/BigInteger;ILjava/util/Formatter$BigDecimalLayoutForm;)V
    .registers 14
    .param p1, "intVal"    # Ljava/math/BigInteger;
    .param p2, "scale"    # I
    .param p3, "form"    # Ljava/util/Formatter$BigDecimalLayoutForm;

    .line 3827
    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 3828
    .local v0, "coeff":[C
    iput p2, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->scale:I

    .line 3835
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, v0

    add-int/lit8 v2, v2, 0xe

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v1, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    .line 3837
    const-string v2, "+00"

    const/16 v3, 0x2e

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez p2, :cond_6b

    .line 3838
    array-length v6, v0

    .line 3839
    .local v6, "len":I
    if-le v6, v5, :cond_5c

    .line 3840
    aget-char v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3841
    sget-object v1, Ljava/util/Formatter$BigDecimalLayoutForm;->SCIENTIFIC:Ljava/util/Formatter$BigDecimalLayoutForm;

    if-ne p3, v1, :cond_54

    .line 3842
    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3843
    iput-boolean v5, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->dot:Z

    .line 3844
    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v6, -0x1

    invoke-virtual {v1, v0, v5, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 3845
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "+"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    .line 3846
    const/16 v2, 0xa

    if-ge v6, v2, :cond_4e

    .line 3847
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v6, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_6a

    .line 3849
    :cond_4e
    add-int/lit8 v2, v6, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_6a

    .line 3851
    :cond_54
    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v6, -0x1

    invoke-virtual {v1, v0, v5, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_6a

    .line 3854
    :cond_5c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 3855
    sget-object v1, Ljava/util/Formatter$BigDecimalLayoutForm;->SCIENTIFIC:Ljava/util/Formatter$BigDecimalLayoutForm;

    if-ne p3, v1, :cond_6a

    .line 3856
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    .line 3858
    :cond_6a
    :goto_6a
    return-void

    .line 3860
    .end local v6    # "len":I
    :cond_6b
    int-to-long v6, p2

    neg-long v6, v6

    array-length v1, v0

    sub-int/2addr v1, v5

    int-to-long v8, v1

    add-long/2addr v6, v8

    .line 3861
    .local v6, "adjusted":J
    sget-object v1, Ljava/util/Formatter$BigDecimalLayoutForm;->DECIMAL_FLOAT:Ljava/util/Formatter$BigDecimalLayoutForm;

    const/16 v8, 0x30

    if-ne p3, v1, :cond_c2

    .line 3863
    array-length v1, v0

    sub-int v1, p2, v1

    .line 3864
    .local v1, "pad":I
    if-ltz v1, :cond_95

    .line 3866
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    const-string v3, "0."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3867
    iput-boolean v5, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->dot:Z

    .line 3868
    :goto_85
    if-lez v1, :cond_8f

    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_85

    .line 3869
    :cond_8f
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_c1

    .line 3871
    :cond_95
    neg-int v2, v1

    array-length v9, v0

    if-ge v2, v9, :cond_ad

    .line 3873
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    neg-int v8, v1

    invoke-virtual {v2, v0, v4, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 3874
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3875
    iput-boolean v5, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->dot:Z

    .line 3876
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    neg-int v3, v1

    invoke-virtual {v2, v0, v3, p2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_c1

    .line 3879
    :cond_ad
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v2, v0, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 3880
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b4
    neg-int v3, p2

    if-ge v2, v3, :cond_bf

    .line 3881
    iget-object v3, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3880
    add-int/lit8 v2, v2, 0x1

    goto :goto_b4

    .line 3882
    .end local v2    # "i":I
    :cond_bf
    iput v4, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->scale:I

    .line 3885
    .end local v1    # "pad":I
    :goto_c1
    goto :goto_10d

    .line 3887
    :cond_c2
    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    aget-char v4, v0, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3888
    array-length v1, v0

    if-le v1, v5, :cond_da

    .line 3889
    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3890
    iput-boolean v5, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->dot:Z

    .line 3891
    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    array-length v3, v0

    sub-int/2addr v3, v5

    invoke-virtual {v1, v0, v5, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 3893
    :cond_da
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    .line 3894
    const-wide/16 v3, 0x0

    cmp-long v5, v6, v3

    if-eqz v5, :cond_10a

    .line 3895
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    .line 3897
    .local v1, "abs":J
    iget-object v5, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    cmp-long v3, v6, v3

    if-gez v3, :cond_f4

    const/16 v3, 0x2d

    goto :goto_f6

    :cond_f4
    const/16 v3, 0x2b

    :goto_f6
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3898
    const-wide/16 v3, 0xa

    cmp-long v3, v1, v3

    if-gez v3, :cond_104

    .line 3899
    iget-object v3, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3900
    :cond_104
    iget-object v3, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3901
    .end local v1    # "abs":J
    goto :goto_10d

    .line 3902
    :cond_10a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3905
    :goto_10d
    return-void
.end method

.method private greylist-max-o toCharArray(Ljava/lang/StringBuilder;)[C
    .registers 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 3819
    if-nez p1, :cond_4

    .line 3820
    const/4 v0, 0x0

    return-object v0

    .line 3821
    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    new-array v0, v0, [C

    .line 3822
    .local v0, "result":[C
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1, v0, v2}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 3823
    return-object v0
.end method


# virtual methods
.method public greylist-max-o exponent()[C
    .registers 2

    .line 3815
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->toCharArray(Ljava/lang/StringBuilder;)[C

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o hasDot()Z
    .registers 2

    .line 3791
    iget-boolean v0, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->dot:Z

    return v0
.end method

.method public greylist-max-o layoutChars()[C
    .registers 3

    .line 3800
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3801
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    if-eqz v1, :cond_15

    .line 3802
    const/16 v1, 0x45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3803
    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3805
    :cond_15
    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->toCharArray(Ljava/lang/StringBuilder;)[C

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o mantissa()[C
    .registers 2

    .line 3809
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->toCharArray(Ljava/lang/StringBuilder;)[C

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o scale()I
    .registers 2

    .line 3795
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->scale:I

    return v0
.end method
