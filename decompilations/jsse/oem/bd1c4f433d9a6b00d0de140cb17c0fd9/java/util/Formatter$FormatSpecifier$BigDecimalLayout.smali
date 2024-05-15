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
.field private dot:Z

.field private exp:Ljava/lang/StringBuilder;

.field private mant:Ljava/lang/StringBuilder;

.field private scale:I

.field final synthetic this$1:Ljava/util/Formatter$FormatSpecifier;


# direct methods
.method public constructor <init>(Ljava/util/Formatter$FormatSpecifier;Ljava/math/BigInteger;ILjava/util/Formatter$BigDecimalLayoutForm;)V
    .registers 6
    .param p1, "this$1"    # Ljava/util/Formatter$FormatSpecifier;
    .param p2, "intVal"    # Ljava/math/BigInteger;
    .param p3, "scale"    # I
    .param p4, "form"    # Ljava/util/Formatter$BigDecimalLayoutForm;

    .prologue
    .line 3785
    iput-object p1, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->this$1:Ljava/util/Formatter$FormatSpecifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3782
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->dot:Z

    .line 3786
    invoke-direct {p0, p2, p3, p4}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->layout(Ljava/math/BigInteger;ILjava/util/Formatter$BigDecimalLayoutForm;)V

    .line 3787
    return-void
.end method

.method private layout(Ljava/math/BigInteger;ILjava/util/Formatter$BigDecimalLayoutForm;)V
    .registers 16
    .param p1, "intVal"    # Ljava/math/BigInteger;
    .param p2, "scale"    # I
    .param p3, "form"    # Ljava/util/Formatter$BigDecimalLayoutForm;

    .prologue
    .line 3826
    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 3827
    .local v4, "coeff":[C
    iput p2, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->scale:I

    .line 3834
    new-instance v8, Ljava/lang/StringBuilder;

    array-length v9, v4

    add-int/lit8 v9, v9, 0xe

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    .line 3836
    if-nez p2, :cond_7a

    .line 3837
    array-length v6, v4

    .line 3838
    .local v6, "len":I
    const/4 v8, 0x1

    if-le v6, v8, :cond_66

    .line 3839
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    aget-char v9, v4, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3840
    sget-object v8, Ljava/util/Formatter$BigDecimalLayoutForm;->SCIENTIFIC:Ljava/util/Formatter$BigDecimalLayoutForm;

    if-ne p3, v8, :cond_5d

    .line 3841
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    const/16 v9, 0x2e

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3842
    const/4 v8, 0x1

    iput-boolean v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->dot:Z

    .line 3843
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    add-int/lit8 v9, v6, -0x1

    const/4 v10, 0x1

    invoke-virtual {v8, v4, v10, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 3844
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "+"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    .line 3845
    const/16 v8, 0xa

    if-ge v6, v8, :cond_55

    .line 3846
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    const-string/jumbo v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v6, -0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3857
    :cond_54
    :goto_54
    return-void

    .line 3848
    :cond_55
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    add-int/lit8 v9, v6, -0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_54

    .line 3850
    :cond_5d
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    add-int/lit8 v9, v6, -0x1

    const/4 v10, 0x1

    invoke-virtual {v8, v4, v10, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_54

    .line 3853
    :cond_66
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 3854
    sget-object v8, Ljava/util/Formatter$BigDecimalLayoutForm;->SCIENTIFIC:Ljava/util/Formatter$BigDecimalLayoutForm;

    if-ne p3, v8, :cond_54

    .line 3855
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "+00"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    goto :goto_54

    .line 3859
    .end local v6    # "len":I
    :cond_7a
    int-to-long v8, p2

    neg-long v8, v8

    array-length v10, v4

    add-int/lit8 v10, v10, -0x1

    int-to-long v10, v10

    add-long v2, v8, v10

    .line 3860
    .local v2, "adjusted":J
    sget-object v8, Ljava/util/Formatter$BigDecimalLayoutForm;->DECIMAL_FLOAT:Ljava/util/Formatter$BigDecimalLayoutForm;

    if-ne p3, v8, :cond_dd

    .line 3862
    array-length v8, v4

    sub-int v7, p2, v8

    .line 3863
    .local v7, "pad":I
    if-ltz v7, :cond_a8

    .line 3865
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    const-string/jumbo v9, "0."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3866
    const/4 v8, 0x1

    iput-boolean v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->dot:Z

    .line 3867
    :goto_96
    if-lez v7, :cond_a2

    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    const/16 v9, 0x30

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, -0x1

    goto :goto_96

    .line 3868
    :cond_a2
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 3904
    .end local v7    # "pad":I
    :goto_a7
    return-void

    .line 3870
    .restart local v7    # "pad":I
    :cond_a8
    neg-int v8, v7

    array-length v9, v4

    if-ge v8, v9, :cond_c4

    .line 3872
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    neg-int v9, v7

    const/4 v10, 0x0

    invoke-virtual {v8, v4, v10, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 3873
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    const/16 v9, 0x2e

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3874
    const/4 v8, 0x1

    iput-boolean v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->dot:Z

    .line 3875
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    neg-int v9, v7

    invoke-virtual {v8, v4, v9, p2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_a7

    .line 3878
    :cond_c4
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    array-length v9, v4

    const/4 v10, 0x0

    invoke-virtual {v8, v4, v10, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 3879
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_cc
    neg-int v8, p2

    if-ge v5, v8, :cond_d9

    .line 3880
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    const/16 v9, 0x30

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3879
    add-int/lit8 v5, v5, 0x1

    goto :goto_cc

    .line 3881
    :cond_d9
    const/4 v8, 0x0

    iput v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->scale:I

    goto :goto_a7

    .line 3886
    .end local v5    # "i":I
    .end local v7    # "pad":I
    :cond_dd
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    aget-char v9, v4, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3887
    array-length v8, v4

    const/4 v9, 0x1

    if-le v8, v9, :cond_fc

    .line 3888
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    const/16 v9, 0x2e

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3889
    const/4 v8, 0x1

    iput-boolean v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->dot:Z

    .line 3890
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    array-length v9, v4

    add-int/lit8 v9, v9, -0x1

    const/4 v10, 0x1

    invoke-virtual {v8, v4, v10, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 3892
    :cond_fc
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    .line 3893
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-eqz v8, :cond_131

    .line 3894
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 3896
    .local v0, "abs":J
    iget-object v9, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    const-wide/16 v10, 0x0

    cmp-long v8, v2, v10

    if-gez v8, :cond_12e

    const/16 v8, 0x2d

    :goto_117
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3897
    const-wide/16 v8, 0xa

    cmp-long v8, v0, v8

    if-gez v8, :cond_127

    .line 3898
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    const/16 v9, 0x30

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3899
    :cond_127
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/16 :goto_a7

    .line 3896
    :cond_12e
    const/16 v8, 0x2b

    goto :goto_117

    .line 3901
    .end local v0    # "abs":J
    :cond_131
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    const-string/jumbo v9, "+00"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a7
.end method

.method private toCharArray(Ljava/lang/StringBuilder;)[C
    .registers 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3818
    if-nez p1, :cond_5

    .line 3819
    return-object v1

    .line 3820
    :cond_5
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    new-array v0, v1, [C

    .line 3821
    .local v0, "result":[C
    array-length v1, v0

    invoke-virtual {p1, v2, v1, v0, v2}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 3822
    return-object v0
.end method


# virtual methods
.method public exponent()[C
    .registers 2

    .prologue
    .line 3814
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->toCharArray(Ljava/lang/StringBuilder;)[C

    move-result-object v0

    return-object v0
.end method

.method public hasDot()Z
    .registers 2

    .prologue
    .line 3790
    iget-boolean v0, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->dot:Z

    return v0
.end method

.method public layoutChars()[C
    .registers 3

    .prologue
    .line 3799
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3800
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    if-eqz v1, :cond_15

    .line 3801
    const/16 v1, 0x45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3802
    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3804
    :cond_15
    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->toCharArray(Ljava/lang/StringBuilder;)[C

    move-result-object v1

    return-object v1
.end method

.method public mantissa()[C
    .registers 2

    .prologue
    .line 3808
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->toCharArray(Ljava/lang/StringBuilder;)[C

    move-result-object v0

    return-object v0
.end method

.method public scale()I
    .registers 2

    .prologue
    .line 3794
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->scale:I

    return v0
.end method
