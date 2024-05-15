.class Ljava/util/Formatter$FormatSpecifier;
.super Ljava/lang/Object;
.source "Formatter.java"

# interfaces
.implements Ljava/util/Formatter$FormatString;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Formatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatSpecifier"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private greylist-max-o c:C

.field private greylist-max-o dt:Z

.field private greylist-max-o f:Ljava/util/Formatter$Flags;

.field private greylist-max-o index:I

.field private greylist-max-o precision:I

.field final synthetic blacklist this$0:Ljava/util/Formatter;

.field private greylist-max-o width:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2702
    const-class v0, Ljava/util/Formatter;

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/Formatter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p2, "indexStr"    # Ljava/lang/String;
    .param p3, "flagsStr"    # Ljava/lang/String;
    .param p4, "widthStr"    # Ljava/lang/String;
    .param p5, "precisionStr"    # Ljava/lang/String;
    .param p6, "tTStr"    # Ljava/lang/String;
    .param p7, "convStr"    # Ljava/lang/String;

    .line 2798
    iput-object p1, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2703
    const/4 p1, -0x1

    iput p1, p0, Ljava/util/Formatter$FormatSpecifier;->index:I

    .line 2704
    sget-object p1, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    iput-object p1, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    .line 2707
    const/4 p1, 0x0

    iput-boolean p1, p0, Ljava/util/Formatter$FormatSpecifier;->dt:Z

    .line 2799
    const/4 p1, 0x1

    .line 2801
    .local p1, "idx":I
    invoke-direct {p0, p2}, Ljava/util/Formatter$FormatSpecifier;->index(Ljava/lang/String;)I

    .line 2802
    invoke-direct {p0, p3}, Ljava/util/Formatter$FormatSpecifier;->flags(Ljava/lang/String;)Ljava/util/Formatter$Flags;

    .line 2803
    invoke-direct {p0, p4}, Ljava/util/Formatter$FormatSpecifier;->width(Ljava/lang/String;)I

    .line 2804
    invoke-direct {p0, p5}, Ljava/util/Formatter$FormatSpecifier;->precision(Ljava/lang/String;)I

    .line 2806
    if-eqz p6, :cond_30

    .line 2807
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Formatter$FormatSpecifier;->dt:Z

    .line 2808
    const-string v0, "T"

    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 2809
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    # invokes: Ljava/util/Formatter$Flags;->add(Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;
    invoke-static {v0, v1}, Ljava/util/Formatter$Flags;->access$100(Ljava/util/Formatter$Flags;Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;

    .line 2812
    :cond_30
    invoke-direct {p0, p7}, Ljava/util/Formatter$FormatSpecifier;->conversion(Ljava/lang/String;)C

    .line 2814
    iget-boolean v0, p0, Ljava/util/Formatter$FormatSpecifier;->dt:Z

    if-eqz v0, :cond_3b

    .line 2815
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifier;->checkDateTime()V

    goto :goto_76

    .line 2816
    :cond_3b
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v0}, Ljava/util/Formatter$Conversion;->isGeneral(C)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 2817
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifier;->checkGeneral()V

    goto :goto_76

    .line 2818
    :cond_47
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v0}, Ljava/util/Formatter$Conversion;->isCharacter(C)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 2819
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifier;->checkCharacter()V

    goto :goto_76

    .line 2820
    :cond_53
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v0}, Ljava/util/Formatter$Conversion;->isInteger(C)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 2821
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifier;->checkInteger()V

    goto :goto_76

    .line 2822
    :cond_5f
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v0}, Ljava/util/Formatter$Conversion;->isFloat(C)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 2823
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifier;->checkFloat()V

    goto :goto_76

    .line 2824
    :cond_6b
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v0}, Ljava/util/Formatter$Conversion;->isText(C)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 2825
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifier;->checkText()V

    .line 2828
    :goto_76
    return-void

    .line 2827
    :cond_77
    new-instance v0, Ljava/util/UnknownFormatConversionException;

    iget-char v1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o addDot([C)[C
    .registers 5
    .param p1, "mant"    # [C

    .line 3917
    move-object v0, p1

    .line 3918
    .local v0, "tmp":[C
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [C

    .line 3919
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3920
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x2e

    aput-char v2, v0, v1

    .line 3921
    return-object v0
.end method

.method private greylist-max-o addZeros([CI)[C
    .registers 10
    .param p1, "v"    # [C
    .param p2, "prec"    # I

    .line 3506
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    const/16 v2, 0x2e

    if-ge v0, v1, :cond_e

    .line 3507
    aget-char v1, p1, v0

    if-ne v1, v2, :cond_b

    .line 3508
    goto :goto_e

    .line 3506
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3510
    :cond_e
    :goto_e
    const/4 v1, 0x0

    .line 3511
    .local v1, "needDot":Z
    array-length v3, p1

    if-ne v0, v3, :cond_13

    .line 3512
    const/4 v1, 0x1

    .line 3516
    :cond_13
    array-length v3, p1

    sub-int/2addr v3, v0

    xor-int/lit8 v4, v1, 0x1

    sub-int/2addr v3, v4

    .line 3517
    .local v3, "outPrec":I
    nop

    .line 3518
    if-ne v3, p2, :cond_1c

    .line 3519
    return-object p1

    .line 3522
    :cond_1c
    array-length v4, p1

    add-int/2addr v4, p2

    sub-int/2addr v4, v3

    .line 3523
    add-int/2addr v4, v1

    new-array v4, v4, [C

    .line 3524
    .local v4, "tmp":[C
    array-length v5, p1

    const/4 v6, 0x0

    invoke-static {p1, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3527
    array-length v5, p1

    .line 3528
    .local v5, "start":I
    if-eqz v1, :cond_2f

    .line 3529
    array-length v6, p1

    aput-char v2, v4, v6

    .line 3530
    add-int/lit8 v5, v5, 0x1

    .line 3534
    :cond_2f
    move v2, v5

    .local v2, "j":I
    :goto_30
    array-length v6, v4

    if-ge v2, v6, :cond_3a

    .line 3535
    const/16 v6, 0x30

    aput-char v6, v4, v2

    .line 3534
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 3537
    .end local v2    # "j":I
    :cond_3a
    return-object v4
.end method

.method private greylist-max-o adjustWidth(ILjava/util/Formatter$Flags;Z)I
    .registers 6
    .param p1, "width"    # I
    .param p2, "f"    # Ljava/util/Formatter$Flags;
    .param p3, "neg"    # Z

    .line 3909
    move v0, p1

    .line 3910
    .local v0, "newW":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    if-eqz p3, :cond_10

    sget-object v1, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    invoke-virtual {p2, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 3911
    add-int/lit8 v0, v0, -0x1

    .line 3912
    :cond_10
    return v0
.end method

.method private varargs blacklist checkBadFlags([Ljava/util/Formatter$Flags;)V
    .registers 5
    .param p1, "badFlags"    # [Ljava/util/Formatter$Flags;

    .line 3090
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_18

    .line 3091
    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 3092
    aget-object v1, p1, v0

    iget-char v2, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-direct {p0, v1, v2}, Ljava/util/Formatter$FormatSpecifier;->failMismatch(Ljava/util/Formatter$Flags;C)V

    .line 3090
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3093
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method private greylist-max-o checkCharacter()V
    .registers 5

    .line 3067
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_43

    .line 3069
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/util/Formatter$Flags;

    const/4 v2, 0x0

    sget-object v3, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    aput-object v3, v0, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    aput-object v3, v0, v2

    const/4 v2, 0x3

    sget-object v3, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    aput-object v3, v0, v2

    const/4 v2, 0x4

    sget-object v3, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    aput-object v3, v0, v2

    const/4 v2, 0x5

    sget-object v3, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    aput-object v3, v0, v2

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    .line 3072
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    if-ne v0, v1, :cond_42

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-nez v0, :cond_38

    goto :goto_42

    .line 3073
    :cond_38
    new-instance v0, Ljava/util/MissingFormatWidthException;

    invoke-virtual {p0}, Ljava/util/Formatter$FormatSpecifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/MissingFormatWidthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3074
    :cond_42
    :goto_42
    return-void

    .line 3068
    :cond_43
    new-instance v1, Ljava/util/IllegalFormatPrecisionException;

    invoke-direct {v1, v0}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    throw v1
.end method

.method private greylist-max-o checkDateTime()V
    .registers 5

    .line 3055
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_64

    .line 3057
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v0}, Ljava/util/Formatter$DateTime;->isValid(C)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 3059
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/util/Formatter$Flags;

    const/4 v2, 0x0

    sget-object v3, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    aput-object v3, v0, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    aput-object v3, v0, v2

    const/4 v2, 0x3

    sget-object v3, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    aput-object v3, v0, v2

    const/4 v2, 0x4

    sget-object v3, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    aput-object v3, v0, v2

    const/4 v2, 0x5

    sget-object v3, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    aput-object v3, v0, v2

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    .line 3062
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    if-ne v0, v1, :cond_4a

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-nez v0, :cond_40

    goto :goto_4a

    .line 3063
    :cond_40
    new-instance v0, Ljava/util/MissingFormatWidthException;

    invoke-virtual {p0}, Ljava/util/Formatter$FormatSpecifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/MissingFormatWidthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3064
    :cond_4a
    :goto_4a
    return-void

    .line 3058
    :cond_4b
    new-instance v0, Ljava/util/UnknownFormatConversionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v2, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3056
    :cond_64
    new-instance v1, Ljava/util/IllegalFormatPrecisionException;

    invoke-direct {v1, v0}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    throw v1
.end method

.method private greylist-max-o checkFloat()V
    .registers 5

    .line 3096
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifier;->checkNumeric()V

    .line 3097
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v1, 0x66

    if-ne v0, v1, :cond_a

    goto :goto_3a

    .line 3098
    :cond_a
    const/16 v1, 0x61

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1f

    .line 3099
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    aput-object v1, v0, v3

    sget-object v1, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    goto :goto_3a

    .line 3100
    :cond_1f
    const/16 v1, 0x65

    if-ne v0, v1, :cond_2d

    .line 3101
    new-array v0, v2, [Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    aput-object v1, v0, v3

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    goto :goto_3a

    .line 3102
    :cond_2d
    const/16 v1, 0x67

    if-ne v0, v1, :cond_3a

    .line 3103
    new-array v0, v2, [Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    aput-object v1, v0, v3

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    .line 3105
    :cond_3a
    :goto_3a
    return-void
.end method

.method private greylist-max-o checkGeneral()V
    .registers 4

    .line 3044
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v1, 0x62

    if-eq v0, v1, :cond_a

    const/16 v1, 0x68

    if-ne v0, v1, :cond_1b

    :cond_a
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    .line 3045
    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3046
    sget-object v0, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    iget-char v1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter$FormatSpecifier;->failMismatch(Ljava/util/Formatter$Flags;C)V

    .line 3048
    :cond_1b
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_35

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_35

    .line 3049
    :cond_2b
    new-instance v0, Ljava/util/MissingFormatWidthException;

    invoke-virtual {p0}, Ljava/util/Formatter$FormatSpecifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/MissingFormatWidthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3050
    :cond_35
    :goto_35
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/util/Formatter$Flags;

    const/4 v1, 0x0

    sget-object v2, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    .line 3052
    return-void
.end method

.method private greylist-max-o checkInteger()V
    .registers 5

    .line 3077
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifier;->checkNumeric()V

    .line 3078
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_32

    .line 3081
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v1, 0x64

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1a

    .line 3082
    new-array v0, v3, [Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    goto :goto_31

    .line 3083
    :cond_1a
    const/16 v1, 0x6f

    if-ne v0, v1, :cond_28

    .line 3084
    new-array v0, v3, [Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    goto :goto_31

    .line 3086
    :cond_28
    new-array v0, v3, [Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    .line 3087
    :goto_31
    return-void

    .line 3079
    :cond_32
    new-instance v1, Ljava/util/IllegalFormatPrecisionException;

    invoke-direct {v1, v0}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    throw v1
.end method

.method private greylist-max-o checkNumeric()V
    .registers 3

    .line 3108
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    if-ltz v0, :cond_8

    goto :goto_e

    .line 3109
    :cond_8
    new-instance v1, Ljava/util/IllegalFormatWidthException;

    invoke-direct {v1, v0}, Ljava/util/IllegalFormatWidthException;-><init>(I)V

    throw v1

    .line 3111
    :cond_e
    :goto_e
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    if-eq v0, v1, :cond_1b

    if-ltz v0, :cond_15

    goto :goto_1b

    .line 3112
    :cond_15
    new-instance v1, Ljava/util/IllegalFormatPrecisionException;

    invoke-direct {v1, v0}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    throw v1

    .line 3115
    :cond_1b
    :goto_1b
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    if-ne v0, v1, :cond_3e

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    .line 3116
    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-nez v0, :cond_34

    goto :goto_3e

    .line 3117
    :cond_34
    new-instance v0, Ljava/util/MissingFormatWidthException;

    invoke-virtual {p0}, Ljava/util/Formatter$FormatSpecifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/MissingFormatWidthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3120
    :cond_3e
    :goto_3e
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-nez v0, :cond_67

    :cond_52
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    .line 3121
    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-nez v0, :cond_67

    goto :goto_73

    .line 3122
    :cond_67
    new-instance v0, Ljava/util/IllegalFormatFlagsException;

    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    invoke-virtual {v1}, Ljava/util/Formatter$Flags;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatFlagsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3123
    :cond_73
    :goto_73
    return-void
.end method

.method private greylist-max-o checkText()V
    .registers 4

    .line 3126
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_78

    .line 3128
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v2, 0x25

    if-eq v0, v2, :cond_35

    const/16 v2, 0x6e

    if-eq v0, v2, :cond_10

    .line 3144
    goto :goto_77

    .line 3138
    :cond_10
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    if-ne v0, v1, :cond_2f

    .line 3140
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    invoke-virtual {v0}, Ljava/util/Formatter$Flags;->valueOf()I

    move-result v0

    sget-object v1, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    invoke-virtual {v1}, Ljava/util/Formatter$Flags;->valueOf()I

    move-result v1

    if-ne v0, v1, :cond_23

    goto :goto_77

    .line 3141
    :cond_23
    new-instance v0, Ljava/util/IllegalFormatFlagsException;

    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    invoke-virtual {v1}, Ljava/util/Formatter$Flags;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatFlagsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3139
    :cond_2f
    new-instance v1, Ljava/util/IllegalFormatWidthException;

    invoke-direct {v1, v0}, Ljava/util/IllegalFormatWidthException;-><init>(I)V

    throw v1

    .line 3130
    :cond_35
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    invoke-virtual {v0}, Ljava/util/Formatter$Flags;->valueOf()I

    move-result v0

    sget-object v2, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    invoke-virtual {v2}, Ljava/util/Formatter$Flags;->valueOf()I

    move-result v2

    if-eq v0, v2, :cond_5e

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    .line 3131
    invoke-virtual {v0}, Ljava/util/Formatter$Flags;->valueOf()I

    move-result v0

    sget-object v2, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    invoke-virtual {v2}, Ljava/util/Formatter$Flags;->valueOf()I

    move-result v2

    if-ne v0, v2, :cond_52

    goto :goto_5e

    .line 3132
    :cond_52
    new-instance v0, Ljava/util/IllegalFormatFlagsException;

    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    invoke-virtual {v1}, Ljava/util/Formatter$Flags;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatFlagsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3134
    :cond_5e
    :goto_5e
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    if-ne v0, v1, :cond_77

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-nez v0, :cond_6d

    goto :goto_77

    .line 3135
    :cond_6d
    new-instance v0, Ljava/util/MissingFormatWidthException;

    invoke-virtual {p0}, Ljava/util/Formatter$FormatSpecifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/MissingFormatWidthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3146
    :cond_77
    :goto_77
    return-void

    .line 3127
    :cond_78
    new-instance v1, Ljava/util/IllegalFormatPrecisionException;

    invoke-direct {v1, v0}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    throw v1
.end method

.method private greylist-max-o conversion()C
    .registers 2

    .line 2793
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    return v0
.end method

.method private greylist-max-o conversion(Ljava/lang/String;)C
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 2779
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    .line 2780
    iget-boolean v1, p0, Ljava/util/Formatter$FormatSpecifier;->dt:Z

    if-nez v1, :cond_3e

    .line 2781
    invoke-static {v0}, Ljava/util/Formatter$Conversion;->isValid(C)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 2783
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2784
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    # invokes: Ljava/util/Formatter$Flags;->add(Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;
    invoke-static {v0, v1}, Ljava/util/Formatter$Flags;->access$100(Ljava/util/Formatter$Flags;Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;

    .line 2785
    :cond_20
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    .line 2786
    invoke-static {v0}, Ljava/util/Formatter$Conversion;->isText(C)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 2787
    const/4 v0, -0x2

    iput v0, p0, Ljava/util/Formatter$FormatSpecifier;->index:I

    goto :goto_3e

    .line 2782
    :cond_32
    new-instance v0, Ljava/util/UnknownFormatConversionException;

    iget-char v1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2789
    :cond_3e
    :goto_3e
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    return v0
.end method

.method private greylist-max-o failConversion(CLjava/lang/Object;)V
    .registers 5
    .param p1, "c"    # C
    .param p2, "arg"    # Ljava/lang/Object;

    .line 4403
    new-instance v0, Ljava/util/IllegalFormatConversionException;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/util/IllegalFormatConversionException;-><init>(CLjava/lang/Class;)V

    throw v0
.end method

.method private greylist-max-o failMismatch(Ljava/util/Formatter$Flags;C)V
    .registers 5
    .param p1, "f"    # Ljava/util/Formatter$Flags;
    .param p2, "c"    # C

    .line 4398
    invoke-virtual {p1}, Ljava/util/Formatter$Flags;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4399
    .local v0, "fs":Ljava/lang/String;
    new-instance v1, Ljava/util/FormatFlagsConversionMismatchException;

    invoke-direct {v1, v0, p2}, Ljava/util/FormatFlagsConversionMismatchException;-><init>(Ljava/lang/String;C)V

    throw v1
.end method

.method private greylist-max-o flags(Ljava/lang/String;)Ljava/util/Formatter$Flags;
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 2730
    invoke-static {p1}, Ljava/util/Formatter$Flags;->parse(Ljava/lang/String;)Ljava/util/Formatter$Flags;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    .line 2731
    sget-object v1, Ljava/util/Formatter$Flags;->PREVIOUS:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2732
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/Formatter$FormatSpecifier;->index:I

    .line 2733
    :cond_11
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    return-object v0
.end method

.method private greylist-max-o getZero(Ljava/util/Locale;)C
    .registers 4
    .param p1, "l"    # Ljava/util/Locale;

    .line 4407
    if-eqz p1, :cond_17

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-virtual {v0}, Ljava/util/Formatter;->locale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 4408
    invoke-static {p1}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    .line 4409
    .local v0, "dfs":Ljava/text/DecimalFormatSymbols;
    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v1

    return v1

    .line 4411
    .end local v0    # "dfs":Ljava/text/DecimalFormatSymbols;
    :cond_17
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    # getter for: Ljava/util/Formatter;->zero:C
    invoke-static {v0}, Ljava/util/Formatter;->access$400(Ljava/util/Formatter;)C

    move-result v0

    return v0
.end method

.method private greylist-max-o hexDouble(DI)Ljava/lang/String;
    .registers 27
    .param p1, "d"    # D
    .param p3, "prec"    # I

    .line 3543
    move/from16 v0, p3

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->isFinite(D)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_e9

    const-wide/16 v3, 0x0

    cmpl-double v1, p1, v3

    if-eqz v1, :cond_e9

    if-eqz v0, :cond_e9

    const/16 v1, 0xd

    if-lt v0, v1, :cond_17

    goto/16 :goto_e9

    .line 3547
    :cond_17
    nop

    .line 3549
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->getExponent(D)I

    move-result v1

    .line 3550
    .local v1, "exponent":I
    const/16 v3, -0x3ff

    const/4 v5, 0x1

    if-ne v1, v3, :cond_23

    move v3, v5

    goto :goto_24

    :cond_23
    const/4 v3, 0x0

    .line 3555
    .local v3, "subnormal":Z
    :goto_24
    const/16 v6, 0x36

    if-eqz v3, :cond_3c

    .line 3556
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    invoke-static {v7, v8, v6}, Ljava/lang/Math;->scalb(DI)D

    move-result-wide v7

    # setter for: Ljava/util/Formatter;->scaleUp:D
    invoke-static {v7, v8}, Ljava/util/Formatter;->access$302(D)D

    .line 3557
    # getter for: Ljava/util/Formatter;->scaleUp:D
    invoke-static {}, Ljava/util/Formatter;->access$300()D

    move-result-wide v7

    mul-double v7, v7, p1

    .line 3560
    .end local p1    # "d":D
    .local v7, "d":D
    invoke-static {v7, v8}, Ljava/lang/Math;->getExponent(D)I

    move-result v1

    .line 3561
    goto :goto_3e

    .line 3555
    .end local v7    # "d":D
    .restart local p1    # "d":D
    :cond_3c
    move-wide/from16 v7, p1

    .line 3565
    .end local p1    # "d":D
    .restart local v7    # "d":D
    :goto_3e
    mul-int/lit8 v9, v0, 0x4

    add-int/2addr v9, v5

    .line 3566
    .local v9, "precision":I
    rsub-int/lit8 v10, v9, 0x35

    .line 3568
    .local v10, "shiftDistance":I
    nop

    .line 3570
    invoke-static {v7, v8}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v11

    .line 3572
    .local v11, "doppel":J
    const-wide v13, 0x7fffffffffffffffL

    and-long/2addr v13, v11

    shr-long/2addr v13, v10

    .line 3577
    .local v13, "newSignif":J
    const-wide/16 v15, -0x1

    move-wide/from16 p1, v7

    .end local v7    # "d":D
    .restart local p1    # "d":D
    shl-long v6, v15, v10

    not-long v6, v6

    and-long/2addr v6, v11

    .line 3584
    .local v6, "roundingBits":J
    const-wide/16 v15, 0x1

    and-long v18, v13, v15

    const-wide/16 v20, 0x0

    cmp-long v8, v18, v20

    if-nez v8, :cond_63

    move v8, v5

    goto :goto_64

    :cond_63
    const/4 v8, 0x0

    .line 3585
    .local v8, "leastZero":Z
    :goto_64
    add-int/lit8 v18, v10, -0x1

    shl-long v18, v15, v18

    and-long v18, v18, v6

    cmp-long v18, v18, v20

    if-eqz v18, :cond_71

    move/from16 v18, v5

    goto :goto_73

    :cond_71
    const/16 v18, 0x0

    .line 3587
    .local v18, "round":Z
    :goto_73
    if-le v10, v5, :cond_81

    add-int/lit8 v19, v10, -0x1

    shl-long v4, v15, v19

    not-long v4, v4

    and-long/2addr v4, v6

    cmp-long v4, v4, v20

    if-eqz v4, :cond_81

    const/4 v5, 0x1

    goto :goto_82

    :cond_81
    const/4 v5, 0x0

    :goto_82
    move v4, v5

    .line 3589
    .local v4, "sticky":Z
    if-eqz v8, :cond_89

    if-eqz v18, :cond_89

    if-nez v4, :cond_8d

    :cond_89
    if-nez v8, :cond_8e

    if-eqz v18, :cond_8e

    .line 3590
    :cond_8d
    add-long/2addr v13, v15

    .line 3593
    :cond_8e
    const-wide/high16 v15, -0x8000000000000000L

    and-long/2addr v15, v11

    .line 3594
    .local v15, "signBit":J
    shl-long v19, v13, v10

    or-long v13, v15, v19

    .line 3595
    invoke-static {v13, v14}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v19

    .line 3597
    .local v19, "result":D
    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v5

    if-eqz v5, :cond_a2

    .line 3599
    const-string v2, "1.0p1024"

    return-object v2

    .line 3601
    :cond_a2
    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->toHexString(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 3602
    .local v2, "res":Ljava/lang/String;
    if-nez v3, :cond_ad

    .line 3603
    return-object v2

    .line 3606
    :cond_ad
    const/16 v5, 0x70

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 3607
    .local v5, "idx":I
    const/4 v0, -0x1

    if-ne v5, v0, :cond_b9

    .line 3609
    nop

    .line 3610
    const/4 v0, 0x0

    return-object v0

    .line 3613
    :cond_b9
    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3614
    .local v0, "exp":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    const/16 v17, 0x36

    add-int/lit8 v21, v21, -0x36

    .line 3615
    .local v21, "iexp":I
    move-object/from16 v17, v0

    .end local v0    # "exp":Ljava/lang/String;
    .local v17, "exp":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v1

    const/4 v1, 0x0

    .end local v1    # "exponent":I
    .local v22, "exponent":I
    invoke-virtual {v2, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "p"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3616
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3615
    return-object v0

    .line 3545
    .end local v2    # "res":Ljava/lang/String;
    .end local v3    # "subnormal":Z
    .end local v4    # "sticky":Z
    .end local v5    # "idx":I
    .end local v6    # "roundingBits":J
    .end local v8    # "leastZero":Z
    .end local v9    # "precision":I
    .end local v10    # "shiftDistance":I
    .end local v11    # "doppel":J
    .end local v13    # "newSignif":J
    .end local v15    # "signBit":J
    .end local v17    # "exp":Ljava/lang/String;
    .end local v18    # "round":Z
    .end local v19    # "result":D
    .end local v21    # "iexp":I
    .end local v22    # "exponent":I
    :cond_e9
    :goto_e9
    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->toHexString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o index(Ljava/lang/String;)I
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 2711
    if-eqz p1, :cond_c

    .line 2715
    :try_start_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljava/util/Formatter$FormatSpecifier;->index:I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_8} :catch_9

    .line 2718
    :goto_8
    goto :goto_f

    .line 2716
    :catch_9
    move-exception v0

    .line 2717
    .local v0, "x":Ljava/lang/NumberFormatException;
    nop

    .end local v0    # "x":Ljava/lang/NumberFormatException;
    goto :goto_8

    .line 2720
    :cond_c
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/Formatter$FormatSpecifier;->index:I

    .line 2722
    :goto_f
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->index:I

    return v0
.end method

.method private greylist-max-o justify(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "s"    # Ljava/lang/String;

    .line 3012
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 3013
    return-object p1

    .line 3014
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3015
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v2, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    invoke-virtual {v1, v2}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v1

    .line 3016
    .local v1, "pad":Z
    iget v2, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    .line 3017
    .local v2, "sp":I
    const/16 v3, 0x20

    if-nez v1, :cond_27

    .line 3018
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1f
    if-ge v4, v2, :cond_27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 3019
    .end local v4    # "i":I
    :cond_27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3020
    if-eqz v1, :cond_35

    .line 3021
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2d
    if-ge v4, v2, :cond_35

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    .line 3022
    .end local v4    # "i":I
    :cond_35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private greylist-max-o leadingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
    .registers 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "neg"    # Z

    .line 3239
    if-nez p2, :cond_22

    .line 3240
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3241
    const/16 v0, 0x2b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_37

    .line 3242
    :cond_12
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 3243
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_37

    .line 3246
    :cond_22
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 3247
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_37

    .line 3249
    :cond_32
    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3251
    :cond_37
    :goto_37
    return-object p1
.end method

.method private greylist-max-o localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;
    .registers 14
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "value"    # J
    .param p4, "f"    # Ljava/util/Formatter$Flags;
    .param p5, "width"    # I
    .param p6, "l"    # Ljava/util/Locale;

    .line 4418
    const/16 v0, 0xa

    invoke-static {p2, p3, v0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 4419
    .local v0, "va":[C
    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;
    .registers 22
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "value"    # [C
    .param p3, "f"    # Ljava/util/Formatter$Flags;
    .param p4, "width"    # I
    .param p5, "l"    # Ljava/util/Locale;

    .line 4426
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p5

    if-nez p1, :cond_10

    .line 4427
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .end local p1    # "sb":Ljava/lang/StringBuilder;
    .local v4, "sb":Ljava/lang/StringBuilder;
    goto :goto_12

    .line 4426
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .restart local p1    # "sb":Ljava/lang/StringBuilder;
    :cond_10
    move-object/from16 v4, p1

    .line 4428
    .end local p1    # "sb":Ljava/lang/StringBuilder;
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    :goto_12
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 4430
    .local v5, "begin":I
    move-object/from16 v6, p0

    invoke-direct {v6, v3}, Ljava/util/Formatter$FormatSpecifier;->getZero(Ljava/util/Locale;)C

    move-result v7

    .line 4433
    .local v7, "zero":C
    const/4 v8, 0x0

    .line 4434
    .local v8, "grpSep":C
    const/4 v9, -0x1

    .line 4435
    .local v9, "grpSize":I
    const/4 v10, 0x0

    .line 4437
    .local v10, "decSep":C
    array-length v11, v0

    .line 4438
    .local v11, "len":I
    move v12, v11

    .line 4439
    .local v12, "dot":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_22
    if-ge v13, v11, :cond_2f

    .line 4440
    aget-char v14, v0, v13

    const/16 v15, 0x2e

    if-ne v14, v15, :cond_2c

    .line 4441
    move v12, v13

    .line 4442
    goto :goto_2f

    .line 4439
    :cond_2c
    add-int/lit8 v13, v13, 0x1

    goto :goto_22

    .line 4446
    .end local v13    # "j":I
    :cond_2f
    :goto_2f
    if-ge v12, v11, :cond_47

    .line 4447
    if-eqz v3, :cond_45

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v13}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3c

    goto :goto_45

    .line 4450
    :cond_3c
    invoke-static/range {p5 .. p5}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v13

    .line 4451
    .local v13, "dfs":Ljava/text/DecimalFormatSymbols;
    invoke-virtual {v13}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v10

    goto :goto_47

    .line 4448
    .end local v13    # "dfs":Ljava/text/DecimalFormatSymbols;
    :cond_45
    :goto_45
    const/16 v10, 0x2e

    .line 4455
    :cond_47
    :goto_47
    sget-object v13, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    invoke-virtual {v1, v13}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v13

    if-eqz v13, :cond_7d

    .line 4456
    if-eqz v3, :cond_7a

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v13}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5a

    goto :goto_7a

    .line 4460
    :cond_5a
    invoke-static/range {p5 .. p5}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v13

    .line 4461
    .restart local v13    # "dfs":Ljava/text/DecimalFormatSymbols;
    invoke-virtual {v13}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v8

    .line 4462
    invoke-static/range {p5 .. p5}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v14

    check-cast v14, Ljava/text/DecimalFormat;

    .line 4463
    .local v14, "df":Ljava/text/DecimalFormat;
    invoke-virtual {v14}, Ljava/text/DecimalFormat;->getGroupingSize()I

    move-result v9

    .line 4469
    invoke-virtual {v14}, Ljava/text/DecimalFormat;->isGroupingUsed()Z

    move-result v15

    if-eqz v15, :cond_78

    invoke-virtual {v14}, Ljava/text/DecimalFormat;->getGroupingSize()I

    move-result v15

    if-nez v15, :cond_7d

    .line 4470
    :cond_78
    const/4 v8, 0x0

    goto :goto_7d

    .line 4457
    .end local v13    # "dfs":Ljava/text/DecimalFormatSymbols;
    .end local v14    # "df":Ljava/text/DecimalFormat;
    :cond_7a
    :goto_7a
    const/16 v8, 0x2c

    .line 4458
    const/4 v9, 0x3

    .line 4477
    :cond_7d
    :goto_7d
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_7e
    if-ge v13, v11, :cond_a4

    .line 4478
    if-ne v13, v12, :cond_87

    .line 4479
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4481
    const/4 v8, 0x0

    .line 4482
    goto :goto_9f

    .line 4485
    :cond_87
    aget-char v14, v0, v13

    .line 4486
    .local v14, "c":C
    add-int/lit8 v15, v14, -0x30

    add-int/2addr v15, v7

    int-to-char v15, v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4487
    if-eqz v8, :cond_9f

    add-int/lit8 v15, v12, -0x1

    if-eq v13, v15, :cond_9f

    sub-int v15, v12, v13

    rem-int/2addr v15, v9

    const/4 v0, 0x1

    if-ne v15, v0, :cond_9f

    .line 4488
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4477
    .end local v14    # "c":C
    :cond_9f
    :goto_9f
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p2

    goto :goto_7e

    .line 4492
    .end local v13    # "j":I
    :cond_a4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 4493
    .end local v11    # "len":I
    .local v0, "len":I
    const/4 v11, -0x1

    if-eq v2, v11, :cond_be

    sget-object v11, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    invoke-virtual {v1, v11}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v11

    if-eqz v11, :cond_be

    .line 4494
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_b4
    sub-int v13, v2, v0

    if-ge v11, v13, :cond_be

    .line 4495
    invoke-virtual {v4, v5, v7}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 4494
    add-int/lit8 v11, v11, 0x1

    goto :goto_b4

    .line 4497
    .end local v11    # "k":I
    :cond_be
    return-object v4
.end method

.method private greylist-max-o precision(Ljava/lang/String;)I
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 2759
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    .line 2760
    if-eqz p1, :cond_15

    .line 2764
    :try_start_5
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    .line 2765
    if-ltz v0, :cond_e

    .line 2769
    goto :goto_15

    .line 2766
    :cond_e
    new-instance v1, Ljava/util/IllegalFormatPrecisionException;

    invoke-direct {v1, v0}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    .end local p0    # "this":Ljava/util/Formatter$FormatSpecifier;
    .end local p1    # "s":Ljava/lang/String;
    throw v1
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_14} :catch_14

    .line 2767
    .restart local p0    # "this":Ljava/util/Formatter$FormatSpecifier;
    .restart local p1    # "s":Ljava/lang/String;
    :catch_14
    move-exception v0

    .line 2771
    :cond_15
    :goto_15
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    return v0
.end method

.method private greylist-max-o print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;
    .registers 21
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "t"    # Ljava/time/temporal/TemporalAccessor;
    .param p3, "c"    # C
    .param p4, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4171
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    if-nez p1, :cond_11

    .line 4172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v0

    .end local p1    # "sb":Ljava/lang/StringBuilder;
    .local v0, "sb":Ljava/lang/StringBuilder;
    goto :goto_13

    .line 4171
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .restart local p1    # "sb":Ljava/lang/StringBuilder;
    :cond_11
    move-object/from16 v12, p1

    .line 4174
    .end local p1    # "sb":Ljava/lang/StringBuilder;
    .local v12, "sb":Ljava/lang/StringBuilder;
    :goto_13
    const/16 v0, 0x46

    const/16 v1, 0x6d

    const/16 v2, 0x59

    const/16 v3, 0x64

    if-eq v10, v0, :cond_373

    const/16 v0, 0x68

    const/4 v4, 0x1

    if-eq v10, v0, :cond_34a

    const/16 v0, 0x70

    if-eq v10, v0, :cond_31d

    const/16 v5, 0x48

    if-eq v10, v5, :cond_305

    const/16 v6, 0x49

    if-eq v10, v6, :cond_2ed

    const/16 v7, 0x79

    if-eq v10, v2, :cond_2be

    const/16 v14, 0x5a

    if-eq v10, v14, :cond_26f

    const/16 v15, 0x72

    const/16 v13, 0x53

    const/16 v0, 0x4d

    if-eq v10, v15, :cond_239

    const/16 v6, 0x73

    if-eq v10, v6, :cond_221

    if-eq v10, v7, :cond_2be

    const/16 v6, 0x7a

    if-eq v10, v6, :cond_1ed

    packed-switch v10, :pswitch_data_394

    packed-switch v10, :pswitch_data_3a0

    const/16 v1, 0x54

    packed-switch v10, :pswitch_data_3aa

    packed-switch v10, :pswitch_data_3b6

    packed-switch v10, :pswitch_data_3c4

    .line 4387
    goto/16 :goto_387

    .line 4333
    :pswitch_5b
    :try_start_5b
    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v9, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    .line 4334
    .local v0, "i":I
    sget-object v5, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 4335
    .local v5, "flags":Ljava/util/Formatter$Flags;
    const/4 v2, 0x0

    int-to-long v3, v0

    const/4 v6, 0x2

    move-object/from16 v1, p0

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4336
    goto/16 :goto_387

    .line 4191
    .end local v0    # "i":I
    .end local v5    # "flags":Ljava/util/Formatter$Flags;
    :pswitch_73
    sget-object v0, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-interface {v9, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    .line 4192
    .restart local v0    # "i":I
    const/4 v2, 0x0

    int-to-long v3, v0

    sget-object v5, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    const/4 v6, 0x2

    move-object/from16 v1, p0

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4193
    goto/16 :goto_387

    .line 4181
    .end local v0    # "i":I
    :pswitch_8b
    sget-object v0, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v9, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    .line 4182
    .restart local v0    # "i":I
    const/4 v2, 0x0

    int-to-long v3, v0

    sget-object v5, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    const/4 v6, 0x2

    move-object/from16 v1, p0

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4183
    goto/16 :goto_387

    .line 4327
    .end local v0    # "i":I
    :pswitch_a3
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v9, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    .line 4328
    .restart local v0    # "i":I
    sget-object v5, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 4329
    .restart local v5    # "flags":Ljava/util/Formatter$Flags;
    const/4 v2, 0x0

    int-to-long v3, v0

    const/4 v6, 0x3

    move-object/from16 v1, p0

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4330
    goto/16 :goto_387

    .line 4319
    .end local v0    # "i":I
    .end local v5    # "flags":Ljava/util/Formatter$Flags;
    :pswitch_bb
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {v9, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    .line 4320
    .restart local v0    # "i":I
    if-ne v10, v3, :cond_c7

    .line 4321
    sget-object v1, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    move-object v5, v1

    goto :goto_ca

    .line 4322
    :cond_c7
    sget-object v1, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    move-object v5, v1

    :goto_ca
    nop

    .line 4323
    .restart local v5    # "flags":Ljava/util/Formatter$Flags;
    const/4 v2, 0x0

    int-to-long v3, v0

    const/4 v6, 0x2

    move-object/from16 v1, p0

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4324
    goto/16 :goto_387

    .line 4363
    .end local v0    # "i":I
    .end local v5    # "flags":Ljava/util/Formatter$Flags;
    :pswitch_db
    const/16 v0, 0x20

    .line 4364
    .local v0, "sep":C
    const/16 v4, 0x61

    invoke-direct {v8, v12, v9, v4, v11}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4365
    const/16 v4, 0x62

    invoke-direct {v8, v12, v9, v4, v11}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4366
    invoke-direct {v8, v12, v9, v3, v11}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4367
    invoke-direct {v8, v12, v9, v1, v11}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4368
    invoke-direct {v8, v12, v9, v14, v11}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4369
    invoke-direct {v8, v12, v9, v2, v11}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    .line 4370
    goto/16 :goto_387

    .line 4238
    .end local v0    # "sep":C
    :pswitch_109
    sget-object v0, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    invoke-interface {v9, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    .line 4239
    .local v0, "i":I
    sget-object v5, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 4240
    .restart local v5    # "flags":Ljava/util/Formatter$Flags;
    const/4 v2, 0x0

    int-to-long v3, v0

    const/4 v6, 0x2

    move-object/from16 v1, p0

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4241
    goto/16 :goto_387

    .line 4342
    .end local v0    # "i":I
    .end local v5    # "flags":Ljava/util/Formatter$Flags;
    :pswitch_121
    const/16 v2, 0x3a

    .line 4343
    .local v2, "sep":C
    invoke-direct {v8, v12, v9, v5, v11}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4344
    invoke-direct {v8, v12, v9, v0, v11}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    .line 4345
    if-ne v10, v1, :cond_387

    .line 4346
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4347
    invoke-direct {v8, v12, v9, v13, v11}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    goto/16 :goto_387

    .line 4214
    .end local v2    # "sep":C
    :pswitch_137
    sget-object v0, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {v9, v0}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    sget-object v2, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    .line 4215
    invoke-interface {v9, v2}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    add-long v13, v0, v2

    .line 4216
    .local v13, "i":J
    sget-object v5, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    .line 4217
    .restart local v5    # "flags":Ljava/util/Formatter$Flags;
    const/4 v2, 0x0

    iget v6, v8, Ljava/util/Formatter$FormatSpecifier;->width:I

    move-object/from16 v1, p0

    move-wide v3, v13

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4218
    goto/16 :goto_387

    .line 4202
    .end local v5    # "flags":Ljava/util/Formatter$Flags;
    .end local v13    # "i":J
    :pswitch_15b
    sget-object v0, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v9, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    const v1, 0xf4240

    mul-int/2addr v0, v1

    .line 4203
    .restart local v0    # "i":I
    sget-object v5, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 4204
    .restart local v5    # "flags":Ljava/util/Formatter$Flags;
    const/4 v2, 0x0

    int-to-long v3, v0

    const/16 v6, 0x9

    move-object/from16 v1, p0

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4205
    goto/16 :goto_387

    .line 4196
    .end local v0    # "i":I
    .end local v5    # "flags":Ljava/util/Formatter$Flags;
    :pswitch_178
    sget-object v0, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-interface {v9, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    .line 4197
    .restart local v0    # "i":I
    sget-object v5, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 4198
    .restart local v5    # "flags":Ljava/util/Formatter$Flags;
    const/4 v2, 0x0

    int-to-long v3, v0

    const/4 v6, 0x2

    move-object/from16 v1, p0

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4199
    goto/16 :goto_387

    .line 4208
    .end local v0    # "i":I
    .end local v5    # "flags":Ljava/util/Formatter$Flags;
    :pswitch_190
    sget-object v0, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v9, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    .line 4209
    .restart local v0    # "i":I
    sget-object v5, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 4210
    .restart local v5    # "flags":Ljava/util/Formatter$Flags;
    const/4 v2, 0x0

    int-to-long v3, v0

    const/4 v6, 0x3

    move-object/from16 v1, p0

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4211
    goto/16 :goto_387

    .line 4373
    .end local v0    # "i":I
    .end local v5    # "flags":Ljava/util/Formatter$Flags;
    :pswitch_1a8
    const/16 v0, 0x2f

    .line 4374
    .local v0, "sep":C
    invoke-direct {v8, v12, v9, v1, v11}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4375
    invoke-direct {v8, v12, v9, v3, v11}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4376
    invoke-direct {v8, v12, v9, v7, v11}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    .line 4377
    goto/16 :goto_387

    .line 4276
    .end local v0    # "sep":C
    :pswitch_1bd
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {v9, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v4

    .line 4277
    .local v0, "i":I
    if-nez v11, :cond_1cb

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_1cc

    :cond_1cb
    move-object v1, v11

    .line 4278
    .local v1, "lt":Ljava/util/Locale;
    :goto_1cc
    invoke-static {v1}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v2

    .line 4279
    .local v2, "dfs":Ljava/text/DateFormatSymbols;
    const/16 v3, 0x41

    if-ne v10, v3, :cond_1df

    .line 4280
    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_387

    .line 4282
    :cond_1df
    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4283
    goto/16 :goto_387

    .line 4389
    .end local v0    # "i":I
    .end local v1    # "lt":Ljava/util/Locale;
    .end local v2    # "dfs":Ljava/text/DateFormatSymbols;
    :catch_1ea
    move-exception v0

    goto/16 :goto_389

    .line 4244
    :cond_1ed
    sget-object v0, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {v9, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    .line 4245
    .restart local v0    # "i":I
    if-gez v0, :cond_1f6

    goto :goto_1f7

    :cond_1f6
    const/4 v4, 0x0

    :goto_1f7
    move v13, v4

    .line 4246
    .local v13, "neg":Z
    if-eqz v13, :cond_1fd

    const/16 v1, 0x2d

    goto :goto_1ff

    :cond_1fd
    const/16 v1, 0x2b

    :goto_1ff
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4247
    if-eqz v13, :cond_205

    .line 4248
    neg-int v0, v0

    .line 4249
    :cond_205
    div-int/lit8 v1, v0, 0x3c

    move v14, v1

    .line 4251
    .local v14, "min":I
    div-int/lit8 v1, v14, 0x3c

    mul-int/2addr v1, v3

    rem-int/lit8 v2, v14, 0x3c

    add-int v15, v1, v2

    .line 4252
    .local v15, "offset":I
    sget-object v5, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 4253
    .restart local v5    # "flags":Ljava/util/Formatter$Flags;
    const/4 v2, 0x0

    int-to-long v3, v15

    const/4 v6, 0x4

    move-object/from16 v1, p0

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4254
    goto/16 :goto_387

    .line 4232
    .end local v0    # "i":I
    .end local v5    # "flags":Ljava/util/Formatter$Flags;
    .end local v13    # "neg":Z
    .end local v14    # "min":I
    .end local v15    # "offset":I
    :cond_221
    sget-object v0, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {v9, v0}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v3

    .line 4233
    .local v3, "i":J
    sget-object v5, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    .line 4234
    .restart local v5    # "flags":Ljava/util/Formatter$Flags;
    const/4 v2, 0x0

    iget v6, v8, Ljava/util/Formatter$FormatSpecifier;->width:I

    move-object/from16 v1, p0

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4235
    goto/16 :goto_387

    .line 4352
    .end local v3    # "i":J
    .end local v5    # "flags":Ljava/util/Formatter$Flags;
    :cond_239
    const/16 v1, 0x3a

    .line 4353
    .local v1, "sep":C
    invoke-direct {v8, v12, v9, v6, v11}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4354
    invoke-direct {v8, v12, v9, v0, v11}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4355
    invoke-direct {v8, v12, v9, v13, v11}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v0

    const/16 v2, 0x20

    invoke-interface {v0, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4358
    .local v0, "tsb":Ljava/lang/StringBuilder;
    const/16 v2, 0x70

    invoke-direct {v8, v0, v9, v2, v11}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    .line 4359
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v11, :cond_264

    move-object v3, v11

    goto :goto_266

    :cond_264
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    :goto_266
    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4360
    goto/16 :goto_387

    .line 4257
    .end local v0    # "tsb":Ljava/lang/StringBuilder;
    .end local v1    # "sep":C
    :cond_26f
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zone()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/ZoneId;

    .line 4258
    .local v0, "zid":Ljava/time/ZoneId;
    if-eqz v0, :cond_2b4

    .line 4261
    instance-of v1, v0, Ljava/time/ZoneOffset;

    if-nez v1, :cond_2ab

    sget-object v1, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    .line 4262
    invoke-interface {v9, v1}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v1

    if-eqz v1, :cond_2ab

    .line 4263
    invoke-static/range {p2 .. p2}, Ljava/time/Instant;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object v1

    .line 4264
    .local v1, "instant":Ljava/time/Instant;
    invoke-virtual {v0}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 4265
    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/time/zone/ZoneRules;->isDaylightSavings(Ljava/time/Instant;)Z

    move-result v3

    .line 4267
    if-nez v11, :cond_2a0

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_2a1

    :cond_2a0
    move-object v4, v11

    .line 4265
    :goto_2a1
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 4264
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4268
    goto/16 :goto_387

    .line 4270
    .end local v1    # "instant":Ljava/time/Instant;
    :cond_2ab
    invoke-virtual {v0}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4271
    goto/16 :goto_387

    .line 4259
    :cond_2b4
    new-instance v1, Ljava/util/IllegalFormatConversionException;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v10, v2}, Ljava/util/IllegalFormatConversionException;-><init>(CLjava/lang/Class;)V

    .end local v12    # "sb":Ljava/lang/StringBuilder;
    .end local p0    # "this":Ljava/util/Formatter$FormatSpecifier;
    .end local p2    # "t":Ljava/time/temporal/TemporalAccessor;
    .end local p3    # "c":C
    .end local p4    # "l":Ljava/util/Locale;
    throw v1

    .line 4300
    .end local v0    # "zid":Ljava/time/ZoneId;
    .restart local v12    # "sb":Ljava/lang/StringBuilder;
    .restart local p0    # "this":Ljava/util/Formatter$FormatSpecifier;
    .restart local p2    # "t":Ljava/time/temporal/TemporalAccessor;
    .restart local p3    # "c":C
    .restart local p4    # "l":Ljava/util/Locale;
    :cond_2be
    :pswitch_2be
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {v9, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    .line 4301
    .local v0, "i":I
    const/4 v1, 0x2

    .line 4302
    .local v1, "size":I
    const/16 v3, 0x43

    if-eq v10, v3, :cond_2d7

    if-eq v10, v2, :cond_2d4

    if-eq v10, v7, :cond_2cf

    move v13, v1

    goto :goto_2db

    .line 4307
    :cond_2cf
    rem-int/lit8 v2, v0, 0x64

    move v0, v2

    .line 4308
    move v13, v1

    goto :goto_2db

    .line 4310
    :cond_2d4
    const/4 v1, 0x4

    move v13, v1

    goto :goto_2db

    .line 4304
    :cond_2d7
    div-int/lit8 v2, v0, 0x64

    move v0, v2

    .line 4305
    move v13, v1

    .line 4313
    .end local v1    # "size":I
    .local v13, "size":I
    :goto_2db
    sget-object v5, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 4314
    .restart local v5    # "flags":Ljava/util/Formatter$Flags;
    const/4 v2, 0x0

    int-to-long v3, v0

    move-object/from16 v1, p0

    move v6, v13

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4315
    goto/16 :goto_387

    .line 4186
    .end local v0    # "i":I
    .end local v5    # "flags":Ljava/util/Formatter$Flags;
    .end local v13    # "size":I
    :cond_2ed
    sget-object v0, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-interface {v9, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    .line 4187
    .restart local v0    # "i":I
    const/4 v2, 0x0

    int-to-long v3, v0

    sget-object v5, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    const/4 v6, 0x2

    move-object/from16 v1, p0

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4188
    goto/16 :goto_387

    .line 4176
    .end local v0    # "i":I
    :cond_305
    sget-object v0, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v9, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    .line 4177
    .restart local v0    # "i":I
    const/4 v2, 0x0

    int-to-long v3, v0

    sget-object v5, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    const/4 v6, 0x2

    move-object/from16 v1, p0

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4178
    goto/16 :goto_387

    .line 4222
    .end local v0    # "i":I
    :cond_31d
    const-string v0, "AM"

    const-string v1, "PM"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 4223
    .local v0, "ampm":[Ljava/lang/String;
    if-eqz v11, :cond_334

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    if-eq v11, v1, :cond_334

    .line 4224
    invoke-static/range {p4 .. p4}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v1

    .line 4225
    .local v1, "dfs":Ljava/text/DateFormatSymbols;
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 4227
    .end local v1    # "dfs":Ljava/text/DateFormatSymbols;
    :cond_334
    sget-object v1, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v9, v1}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v1

    aget-object v1, v0, v1

    .line 4228
    .local v1, "s":Ljava/lang/String;
    if-eqz v11, :cond_340

    move-object v2, v11

    goto :goto_342

    :cond_340
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    :goto_342
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4229
    goto :goto_387

    .line 4288
    .end local v0    # "ampm":[Ljava/lang/String;
    .end local v1    # "s":Ljava/lang/String;
    :cond_34a
    :pswitch_34a
    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v9, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    sub-int/2addr v0, v4

    .line 4289
    .local v0, "i":I
    if-nez v11, :cond_356

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_357

    :cond_356
    move-object v1, v11

    .line 4290
    .local v1, "lt":Ljava/util/Locale;
    :goto_357
    invoke-static {v1}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v2

    .line 4291
    .restart local v2    # "dfs":Ljava/text/DateFormatSymbols;
    const/16 v3, 0x42

    if-ne v10, v3, :cond_369

    .line 4292
    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_387

    .line 4294
    :cond_369
    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4295
    goto :goto_387

    .line 4380
    .end local v0    # "i":I
    .end local v1    # "lt":Ljava/util/Locale;
    .end local v2    # "dfs":Ljava/text/DateFormatSymbols;
    :cond_373
    const/16 v0, 0x2d

    .line 4381
    .local v0, "sep":C
    invoke-direct {v8, v12, v9, v2, v11}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4382
    invoke-direct {v8, v12, v9, v1, v11}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4383
    invoke-direct {v8, v12, v9, v3, v11}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;
    :try_end_386
    .catch Ljava/time/DateTimeException; {:try_start_5b .. :try_end_386} :catch_1ea

    .line 4384
    nop

    .line 4391
    .end local v0    # "sep":C
    :cond_387
    :goto_387
    nop

    .line 4392
    return-object v12

    .line 4390
    .local v0, "x":Ljava/time/DateTimeException;
    :goto_389
    new-instance v1, Ljava/util/IllegalFormatConversionException;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v10, v2}, Ljava/util/IllegalFormatConversionException;-><init>(CLjava/lang/Class;)V

    throw v1

    nop

    :pswitch_data_394
    .packed-switch 0x41
        :pswitch_1bd
        :pswitch_34a
        :pswitch_2be
        :pswitch_1a8
    .end packed-switch

    :pswitch_data_3a0
    .packed-switch 0x4c
        :pswitch_190
        :pswitch_178
        :pswitch_15b
    .end packed-switch

    :pswitch_data_3aa
    .packed-switch 0x51
        :pswitch_137
        :pswitch_121
        :pswitch_109
        :pswitch_121
    .end packed-switch

    :pswitch_data_3b6
    .packed-switch 0x61
        :pswitch_1bd
        :pswitch_34a
        :pswitch_db
        :pswitch_bb
        :pswitch_bb
    .end packed-switch

    :pswitch_data_3c4
    .packed-switch 0x6a
        :pswitch_a3
        :pswitch_8b
        :pswitch_73
        :pswitch_5b
    .end packed-switch
.end method

.method private greylist-max-o print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;
    .registers 22
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "t"    # Ljava/util/Calendar;
    .param p3, "c"    # C
    .param p4, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3954
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    if-nez p1, :cond_11

    .line 3955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v0

    .end local p1    # "sb":Ljava/lang/StringBuilder;
    .local v0, "sb":Ljava/lang/StringBuilder;
    goto :goto_13

    .line 3954
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .restart local p1    # "sb":Ljava/lang/StringBuilder;
    :cond_11
    move-object/from16 v11, p1

    .line 3956
    .end local p1    # "sb":Ljava/lang/StringBuilder;
    .local v11, "sb":Ljava/lang/StringBuilder;
    :goto_13
    const/16 v0, 0x46

    const/16 v2, 0x59

    const/16 v3, 0x64

    if-eq v9, v0, :cond_31c

    const/16 v0, 0x68

    const/4 v4, 0x2

    if-eq v9, v0, :cond_2f6

    const/16 v0, 0x70

    if-eq v9, v0, :cond_2ca

    const/16 v5, 0x48

    const/16 v6, 0xc

    const/16 v12, 0x49

    if-eq v9, v5, :cond_292

    if-eq v9, v12, :cond_292

    const/16 v13, 0x79

    const/4 v14, 0x1

    if-eq v9, v2, :cond_262

    const/16 v0, 0x5a

    if-eq v9, v0, :cond_244

    const/16 v12, 0x72

    const/16 v15, 0x53

    const/16 v1, 0x4d

    if-eq v9, v12, :cond_20c

    const/16 v12, 0x73

    if-eq v9, v12, :cond_1f0

    if-eq v9, v13, :cond_262

    const/16 v12, 0x7a

    if-eq v9, v12, :cond_1ae

    packed-switch v9, :pswitch_data_334

    const/16 v12, 0xe

    packed-switch v9, :pswitch_data_340

    const/16 v12, 0x54

    packed-switch v9, :pswitch_data_34a

    packed-switch v9, :pswitch_data_356

    packed-switch v9, :pswitch_data_364

    .line 4154
    goto/16 :goto_332

    .line 4100
    :pswitch_5e
    invoke-virtual {v8, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v12, v0, 0x1

    .line 4101
    .local v12, "i":I
    sget-object v13, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 4102
    .local v13, "flags":Ljava/util/Formatter$Flags;
    const/4 v1, 0x0

    int-to-long v2, v12

    const/4 v5, 0x2

    move-object/from16 v0, p0

    move-object v4, v13

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4103
    goto/16 :goto_332

    .line 4094
    .end local v12    # "i":I
    .end local v13    # "flags":Ljava/util/Formatter$Flags;
    :pswitch_77
    const/4 v0, 0x6

    invoke-virtual {v8, v0}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 4095
    .restart local v12    # "i":I
    sget-object v13, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 4096
    .restart local v13    # "flags":Ljava/util/Formatter$Flags;
    const/4 v1, 0x0

    int-to-long v2, v12

    const/4 v5, 0x3

    move-object/from16 v0, p0

    move-object v4, v13

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4097
    goto/16 :goto_332

    .line 4086
    .end local v12    # "i":I
    .end local v13    # "flags":Ljava/util/Formatter$Flags;
    :pswitch_8f
    const/4 v0, 0x5

    invoke-virtual {v8, v0}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 4087
    .restart local v12    # "i":I
    if-ne v9, v3, :cond_9a

    .line 4088
    sget-object v0, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    move-object v4, v0

    goto :goto_9d

    .line 4089
    :cond_9a
    sget-object v0, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    move-object v4, v0

    :goto_9d
    nop

    .line 4090
    .local v4, "flags":Ljava/util/Formatter$Flags;
    const/4 v1, 0x0

    int-to-long v2, v12

    const/4 v5, 0x2

    move-object/from16 v0, p0

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4091
    goto/16 :goto_332

    .line 4130
    .end local v4    # "flags":Ljava/util/Formatter$Flags;
    .end local v12    # "i":I
    :pswitch_ae
    const/16 v1, 0x20

    .line 4131
    .local v1, "sep":C
    const/16 v4, 0x61

    invoke-direct {v7, v11, v8, v4, v10}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4132
    const/16 v4, 0x62

    invoke-direct {v7, v11, v8, v4, v10}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4133
    invoke-direct {v7, v11, v8, v3, v10}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4134
    invoke-direct {v7, v11, v8, v12, v10}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4135
    invoke-direct {v7, v11, v8, v0, v10}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4136
    invoke-direct {v7, v11, v8, v2, v10}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    .line 4137
    goto/16 :goto_332

    .line 4013
    .end local v1    # "sep":C
    :pswitch_dc
    const/16 v0, 0xd

    invoke-virtual {v8, v0}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 4014
    .restart local v12    # "i":I
    sget-object v13, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 4015
    .restart local v13    # "flags":Ljava/util/Formatter$Flags;
    const/4 v1, 0x0

    int-to-long v2, v12

    const/4 v5, 0x2

    move-object/from16 v0, p0

    move-object v4, v13

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4016
    goto/16 :goto_332

    .line 4109
    .end local v12    # "i":I
    .end local v13    # "flags":Ljava/util/Formatter$Flags;
    :pswitch_f5
    const/16 v0, 0x3a

    .line 4110
    .local v0, "sep":C
    invoke-direct {v7, v11, v8, v5, v10}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4111
    invoke-direct {v7, v11, v8, v1, v10}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    .line 4112
    if-ne v9, v12, :cond_332

    .line 4113
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4114
    invoke-direct {v7, v11, v8, v15, v10}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    goto/16 :goto_332

    .line 3990
    .end local v0    # "sep":C
    :pswitch_10b
    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    .line 3991
    .local v12, "i":J
    sget-object v14, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    .line 3992
    .local v14, "flags":Ljava/util/Formatter$Flags;
    const/4 v1, 0x0

    iget v5, v7, Ljava/util/Formatter$FormatSpecifier;->width:I

    move-object/from16 v0, p0

    move-wide v2, v12

    move-object v4, v14

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3993
    goto/16 :goto_332

    .line 3978
    .end local v12    # "i":J
    .end local v14    # "flags":Ljava/util/Formatter$Flags;
    :pswitch_123
    invoke-virtual {v8, v12}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const v1, 0xf4240

    mul-int v12, v0, v1

    .line 3979
    .local v12, "i":I
    sget-object v13, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 3980
    .restart local v13    # "flags":Ljava/util/Formatter$Flags;
    const/4 v1, 0x0

    int-to-long v2, v12

    const/16 v5, 0x9

    move-object/from16 v0, p0

    move-object v4, v13

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3981
    goto/16 :goto_332

    .line 3972
    .end local v12    # "i":I
    .end local v13    # "flags":Ljava/util/Formatter$Flags;
    :pswitch_140
    invoke-virtual {v8, v6}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 3973
    .restart local v12    # "i":I
    sget-object v13, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 3974
    .restart local v13    # "flags":Ljava/util/Formatter$Flags;
    const/4 v1, 0x0

    int-to-long v2, v12

    const/4 v5, 0x2

    move-object/from16 v0, p0

    move-object v4, v13

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3975
    goto/16 :goto_332

    .line 3984
    .end local v12    # "i":I
    .end local v13    # "flags":Ljava/util/Formatter$Flags;
    :pswitch_157
    invoke-virtual {v8, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 3985
    .restart local v12    # "i":I
    sget-object v13, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 3986
    .restart local v13    # "flags":Ljava/util/Formatter$Flags;
    const/4 v1, 0x0

    int-to-long v2, v12

    const/4 v5, 0x3

    move-object/from16 v0, p0

    move-object v4, v13

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3987
    goto/16 :goto_332

    .line 4140
    .end local v12    # "i":I
    .end local v13    # "flags":Ljava/util/Formatter$Flags;
    :pswitch_16e
    const/16 v0, 0x2f

    .line 4141
    .restart local v0    # "sep":C
    const/16 v1, 0x6d

    invoke-direct {v7, v11, v8, v1, v10}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4142
    invoke-direct {v7, v11, v8, v3, v10}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4143
    invoke-direct {v7, v11, v8, v13, v10}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    .line 4144
    goto/16 :goto_332

    .line 4043
    .end local v0    # "sep":C
    :pswitch_185
    const/4 v0, 0x7

    invoke-virtual {v8, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 4044
    .local v0, "i":I
    if-nez v10, :cond_18f

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_190

    :cond_18f
    move-object v1, v10

    .line 4045
    .local v1, "lt":Ljava/util/Locale;
    :goto_190
    invoke-static {v1}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v2

    .line 4046
    .local v2, "dfs":Ljava/text/DateFormatSymbols;
    const/16 v3, 0x41

    if-ne v9, v3, :cond_1a3

    .line 4047
    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_332

    .line 4049
    :cond_1a3
    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4050
    goto/16 :goto_332

    .line 4019
    .end local v0    # "i":I
    .end local v1    # "lt":Ljava/util/Locale;
    .end local v2    # "dfs":Ljava/text/DateFormatSymbols;
    :cond_1ae
    const/16 v0, 0xf

    invoke-virtual {v8, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-virtual {v8, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 4020
    .restart local v0    # "i":I
    if-gez v0, :cond_1be

    goto :goto_1bf

    :cond_1be
    const/4 v14, 0x0

    :goto_1bf
    move v12, v14

    .line 4021
    .local v12, "neg":Z
    if-eqz v12, :cond_1c5

    const/16 v1, 0x2d

    goto :goto_1c7

    :cond_1c5
    const/16 v1, 0x2b

    :goto_1c7
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4022
    if-eqz v12, :cond_1cf

    .line 4023
    neg-int v0, v0

    move v13, v0

    goto :goto_1d0

    .line 4022
    :cond_1cf
    move v13, v0

    .line 4024
    .end local v0    # "i":I
    .local v13, "i":I
    :goto_1d0
    const v0, 0xea60

    div-int v14, v13, v0

    .line 4026
    .local v14, "min":I
    div-int/lit8 v0, v14, 0x3c

    mul-int/2addr v0, v3

    rem-int/lit8 v1, v14, 0x3c

    add-int v15, v0, v1

    .line 4027
    .local v15, "offset":I
    sget-object v16, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 4029
    .local v16, "flags":Ljava/util/Formatter$Flags;
    const/4 v1, 0x0

    int-to-long v2, v15

    const/4 v5, 0x4

    move-object/from16 v0, p0

    move-object/from16 v4, v16

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4030
    goto/16 :goto_332

    .line 4007
    .end local v12    # "neg":Z
    .end local v13    # "i":I
    .end local v14    # "min":I
    .end local v15    # "offset":I
    .end local v16    # "flags":Ljava/util/Formatter$Flags;
    :cond_1f0
    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v12, v0, v2

    .line 4008
    .local v12, "i":J
    sget-object v14, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    .line 4009
    .local v14, "flags":Ljava/util/Formatter$Flags;
    const/4 v1, 0x0

    iget v5, v7, Ljava/util/Formatter$FormatSpecifier;->width:I

    move-object/from16 v0, p0

    move-wide v2, v12

    move-object v4, v14

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4010
    goto/16 :goto_332

    .line 4119
    .end local v12    # "i":J
    .end local v14    # "flags":Ljava/util/Formatter$Flags;
    :cond_20c
    const/16 v0, 0x3a

    .line 4120
    .local v0, "sep":C
    const/16 v2, 0x49

    invoke-direct {v7, v11, v8, v2, v10}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4121
    invoke-direct {v7, v11, v8, v1, v10}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4122
    invoke-direct {v7, v11, v8, v15, v10}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v1

    const/16 v2, 0x20

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4125
    .local v1, "tsb":Ljava/lang/StringBuilder;
    const/16 v2, 0x70

    invoke-direct {v7, v1, v8, v2, v10}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    .line 4126
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v10, :cond_239

    move-object v3, v10

    goto :goto_23b

    :cond_239
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    :goto_23b
    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4127
    goto/16 :goto_332

    .line 4033
    .end local v0    # "sep":C
    .end local v1    # "tsb":Ljava/lang/StringBuilder;
    :cond_244
    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 4034
    .local v0, "tz":Ljava/util/TimeZone;
    const/16 v1, 0x10

    invoke-virtual {v8, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eqz v1, :cond_251

    goto :goto_252

    :cond_251
    const/4 v14, 0x0

    .line 4036
    :goto_252
    if-nez v10, :cond_257

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_258

    :cond_257
    move-object v1, v10

    .line 4034
    :goto_258
    const/4 v2, 0x0

    invoke-virtual {v0, v14, v2, v1}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4037
    goto/16 :goto_332

    .line 4067
    .end local v0    # "tz":Ljava/util/TimeZone;
    :cond_262
    :pswitch_262
    invoke-virtual {v8, v14}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 4068
    .local v0, "i":I
    const/4 v1, 0x2

    .line 4069
    .local v1, "size":I
    const/16 v3, 0x43

    if-eq v9, v3, :cond_27b

    if-eq v9, v2, :cond_277

    if-eq v9, v13, :cond_272

    move v12, v0

    move v13, v1

    goto :goto_27f

    .line 4074
    :cond_272
    rem-int/lit8 v0, v0, 0x64

    .line 4075
    move v12, v0

    move v13, v1

    goto :goto_27f

    .line 4077
    :cond_277
    const/4 v1, 0x4

    move v12, v0

    move v13, v1

    goto :goto_27f

    .line 4071
    :cond_27b
    div-int/lit8 v0, v0, 0x64

    .line 4072
    move v12, v0

    move v13, v1

    .line 4080
    .end local v0    # "i":I
    .end local v1    # "size":I
    .local v12, "i":I
    .local v13, "size":I
    :goto_27f
    sget-object v14, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 4081
    .restart local v14    # "flags":Ljava/util/Formatter$Flags;
    const/4 v1, 0x0

    int-to-long v2, v12

    move-object/from16 v0, p0

    move-object v4, v14

    move v5, v13

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4082
    goto/16 :goto_332

    .line 3961
    .end local v12    # "i":I
    .end local v13    # "size":I
    .end local v14    # "flags":Ljava/util/Formatter$Flags;
    :cond_292
    :pswitch_292
    const/16 v0, 0xb

    invoke-virtual {v8, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 3962
    .restart local v0    # "i":I
    const/16 v1, 0x49

    if-eq v9, v1, :cond_2a3

    const/16 v1, 0x6c

    if-ne v9, v1, :cond_2a1

    goto :goto_2a3

    :cond_2a1
    move v12, v0

    goto :goto_2ac

    .line 3963
    :cond_2a3
    :goto_2a3
    if-eqz v0, :cond_2aa

    if-ne v0, v6, :cond_2a8

    goto :goto_2aa

    :cond_2a8
    rem-int/lit8 v6, v0, 0xc

    :cond_2aa
    :goto_2aa
    move v0, v6

    move v12, v0

    .line 3965
    .end local v0    # "i":I
    .restart local v12    # "i":I
    :goto_2ac
    if-eq v9, v5, :cond_2b7

    const/16 v0, 0x49

    if-ne v9, v0, :cond_2b3

    goto :goto_2b7

    .line 3967
    :cond_2b3
    sget-object v0, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    move-object v4, v0

    goto :goto_2ba

    .line 3966
    :cond_2b7
    :goto_2b7
    sget-object v0, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    move-object v4, v0

    .line 3967
    :goto_2ba
    nop

    .line 3968
    .restart local v4    # "flags":Ljava/util/Formatter$Flags;
    const/4 v1, 0x0

    int-to-long v2, v12

    const/4 v5, 0x2

    move-object/from16 v0, p0

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3969
    goto :goto_332

    .line 3997
    .end local v4    # "flags":Ljava/util/Formatter$Flags;
    .end local v12    # "i":I
    :cond_2ca
    const-string v0, "AM"

    const-string v1, "PM"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 3998
    .local v0, "ampm":[Ljava/lang/String;
    if-eqz v10, :cond_2e0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    if-eq v10, v1, :cond_2e0

    .line 3999
    invoke-static/range {p4 .. p4}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v1

    .line 4000
    .local v1, "dfs":Ljava/text/DateFormatSymbols;
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .line 4002
    .end local v1    # "dfs":Ljava/text/DateFormatSymbols;
    :cond_2e0
    const/16 v1, 0x9

    invoke-virtual {v8, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    aget-object v1, v0, v1

    .line 4003
    .local v1, "s":Ljava/lang/String;
    if-eqz v10, :cond_2ec

    move-object v2, v10

    goto :goto_2ee

    :cond_2ec
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    :goto_2ee
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4004
    goto :goto_332

    .line 4055
    .end local v0    # "ampm":[Ljava/lang/String;
    .end local v1    # "s":Ljava/lang/String;
    :cond_2f6
    :pswitch_2f6
    invoke-virtual {v8, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 4056
    .local v0, "i":I
    if-nez v10, :cond_2ff

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_300

    :cond_2ff
    move-object v1, v10

    .line 4057
    .local v1, "lt":Ljava/util/Locale;
    :goto_300
    invoke-static {v1}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v2

    .line 4058
    .restart local v2    # "dfs":Ljava/text/DateFormatSymbols;
    const/16 v3, 0x42

    if-ne v9, v3, :cond_312

    .line 4059
    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_332

    .line 4061
    :cond_312
    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4062
    goto :goto_332

    .line 4147
    .end local v0    # "i":I
    .end local v1    # "lt":Ljava/util/Locale;
    .end local v2    # "dfs":Ljava/text/DateFormatSymbols;
    :cond_31c
    const/16 v0, 0x2d

    .line 4148
    .local v0, "sep":C
    invoke-direct {v7, v11, v8, v2, v10}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4149
    const/16 v1, 0x6d

    invoke-direct {v7, v11, v8, v1, v10}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4150
    invoke-direct {v7, v11, v8, v3, v10}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    .line 4151
    nop

    .line 4156
    .end local v0    # "sep":C
    :cond_332
    :goto_332
    return-object v11

    nop

    :pswitch_data_334
    .packed-switch 0x41
        :pswitch_185
        :pswitch_2f6
        :pswitch_262
        :pswitch_16e
    .end packed-switch

    :pswitch_data_340
    .packed-switch 0x4c
        :pswitch_157
        :pswitch_140
        :pswitch_123
    .end packed-switch

    :pswitch_data_34a
    .packed-switch 0x51
        :pswitch_10b
        :pswitch_f5
        :pswitch_dc
        :pswitch_f5
    .end packed-switch

    :pswitch_data_356
    .packed-switch 0x61
        :pswitch_185
        :pswitch_2f6
        :pswitch_ae
        :pswitch_8f
        :pswitch_8f
    .end packed-switch

    :pswitch_data_364
    .packed-switch 0x6a
        :pswitch_77
        :pswitch_292
        :pswitch_292
        :pswitch_5e
    .end packed-switch
.end method

.method private greylist-max-o print(BLjava/util/Locale;)V
    .registers 7
    .param p1, "value"    # B
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3149
    int-to-long v0, p1

    .line 3150
    .local v0, "v":J
    if-gez p1, :cond_10

    iget-char v2, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v3, 0x6f

    if-eq v2, v3, :cond_d

    const/16 v3, 0x78

    if-ne v2, v3, :cond_10

    .line 3153
    :cond_d
    const-wide/16 v2, 0x100

    add-long/2addr v0, v2

    .line 3156
    :cond_10
    invoke-direct {p0, v0, v1, p2}, Ljava/util/Formatter$FormatSpecifier;->print(JLjava/util/Locale;)V

    .line 3157
    return-void
.end method

.method private greylist-max-o print(DLjava/util/Locale;)V
    .registers 20
    .param p1, "value"    # D
    .param p3, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3322
    move-object/from16 v9, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v0

    .line 3323
    .local v10, "sb":Ljava/lang/StringBuilder;
    const-wide/16 v0, 0x0

    move-wide/from16 v11, p1

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    move v13, v0

    .line 3325
    .local v13, "neg":Z
    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_51

    .line 3326
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    .line 3329
    .local v14, "v":D
    invoke-direct {v9, v10, v13}, Ljava/util/Formatter$FormatSpecifier;->leadingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 3332
    invoke-static {v14, v15}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 3333
    iget-object v5, v9, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    iget-char v6, v9, Ljava/util/Formatter$FormatSpecifier;->c:C

    iget v7, v9, Ljava/util/Formatter$FormatSpecifier;->precision:I

    move-object/from16 v0, p0

    move-object v1, v10

    move-wide v2, v14

    move-object/from16 v4, p3

    move v8, v13

    invoke-direct/range {v0 .. v8}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;DLjava/util/Locale;Ljava/util/Formatter$Flags;CIZ)V

    goto :goto_4d

    .line 3335
    :cond_3b
    iget-object v0, v9, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 3336
    const-string v0, "INFINITY"

    goto :goto_4a

    :cond_48
    const-string v0, "Infinity"

    .line 3335
    :goto_4a
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3339
    :goto_4d
    invoke-direct {v9, v10, v13}, Ljava/util/Formatter$FormatSpecifier;->trailingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 3340
    .end local v14    # "v":D
    goto :goto_63

    .line 3341
    :cond_51
    iget-object v0, v9, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_5e

    const-string v0, "NAN"

    goto :goto_60

    :cond_5e
    const-string v0, "NaN"

    :goto_60
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3345
    :goto_63
    iget-object v0, v9, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    # getter for: Ljava/util/Formatter;->a:Ljava/lang/Appendable;
    invoke-static {v0}, Ljava/util/Formatter;->access$000(Ljava/util/Formatter;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Ljava/util/Formatter$FormatSpecifier;->justify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 3346
    return-void
.end method

.method private greylist-max-o print(FLjava/util/Locale;)V
    .registers 5
    .param p1, "value"    # F
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3318
    float-to-double v0, p1

    invoke-direct {p0, v0, v1, p2}, Ljava/util/Formatter$FormatSpecifier;->print(DLjava/util/Locale;)V

    .line 3319
    return-void
.end method

.method private greylist-max-o print(ILjava/util/Locale;)V
    .registers 7
    .param p1, "value"    # I
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3171
    int-to-long v0, p1

    .line 3172
    .local v0, "v":J
    if-gez p1, :cond_13

    iget-char v2, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v3, 0x6f

    if-eq v2, v3, :cond_d

    const/16 v3, 0x78

    if-ne v2, v3, :cond_13

    .line 3175
    :cond_d
    const-wide v2, 0x100000000L

    add-long/2addr v0, v2

    .line 3178
    :cond_13
    invoke-direct {p0, v0, v1, p2}, Ljava/util/Formatter$FormatSpecifier;->print(JLjava/util/Locale;)V

    .line 3179
    return-void
.end method

.method private greylist-max-o print(JLjava/util/Locale;)V
    .registers 13
    .param p1, "value"    # J
    .param p3, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3185
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-char v1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x64

    if-ne v1, v4, :cond_49

    .line 3186
    const-wide/16 v4, 0x0

    cmp-long v1, p1, v4

    if-gez v1, :cond_14

    move v2, v3

    :cond_14
    move v7, v2

    .line 3188
    .local v7, "neg":Z
    cmp-long v1, p1, v4

    const/16 v2, 0xa

    if-gez v1, :cond_29

    .line 3189
    invoke-static {p1, p2, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    move-object v8, v1

    .local v1, "va":[C
    goto :goto_32

    .line 3191
    .end local v1    # "va":[C
    :cond_29
    invoke-static {p1, p2, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    move-object v8, v1

    .line 3194
    .local v8, "va":[C
    :goto_32
    invoke-direct {p0, v0, v7}, Ljava/util/Formatter$FormatSpecifier;->leadingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 3197
    iget-object v4, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    invoke-direct {p0, v1, v4, v7}, Ljava/util/Formatter$FormatSpecifier;->adjustWidth(ILjava/util/Formatter$Flags;Z)I

    move-result v5

    move-object v1, p0

    move-object v2, v0

    move-object v3, v8

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    .line 3200
    invoke-direct {p0, v0, v7}, Ljava/util/Formatter$FormatSpecifier;->trailingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 3201
    .end local v7    # "neg":Z
    .end local v8    # "va":[C
    goto/16 :goto_116

    :cond_49
    const/16 v4, 0x6f

    const/4 v5, 0x3

    const/16 v6, 0x30

    const/4 v7, 0x2

    if-ne v1, v4, :cond_a3

    .line 3202
    new-array v1, v5, [Ljava/util/Formatter$Flags;

    sget-object v4, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    aput-object v4, v1, v2

    sget-object v2, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    aput-object v2, v1, v3

    sget-object v2, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    aput-object v2, v1, v7

    invoke-direct {p0, v1}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    .line 3204
    invoke-static {p1, p2}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v1

    .line 3205
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v4, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    invoke-virtual {v2, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 3206
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    goto :goto_7a

    .line 3207
    :cond_76
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    :goto_7a
    nop

    .line 3210
    .local v2, "len":I
    iget-object v3, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v4, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    invoke-virtual {v3, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v3

    if-eqz v3, :cond_88

    .line 3211
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3212
    :cond_88
    iget-object v3, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v4, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    invoke-virtual {v3, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v3

    if-eqz v3, :cond_9e

    .line 3213
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_93
    iget v4, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    sub-int/2addr v4, v2

    if-ge v3, v4, :cond_9e

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_93

    .line 3214
    .end local v3    # "i":I
    :cond_9e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "len":I
    goto/16 :goto_115

    .line 3215
    :cond_a3
    const/16 v4, 0x78

    if-ne v1, v4, :cond_115

    .line 3216
    new-array v1, v5, [Ljava/util/Formatter$Flags;

    sget-object v4, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    aput-object v4, v1, v2

    sget-object v2, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    aput-object v2, v1, v3

    sget-object v2, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    aput-object v2, v1, v7

    invoke-direct {p0, v1}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    .line 3218
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    .line 3219
    .restart local v1    # "s":Ljava/lang/String;
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    invoke-virtual {v2, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v2

    if-eqz v2, :cond_cc

    .line 3220
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v7

    goto :goto_d0

    .line 3221
    :cond_cc
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    :goto_d0
    nop

    .line 3224
    .restart local v2    # "len":I
    iget-object v3, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v4, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    invoke-virtual {v3, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v3

    if-eqz v3, :cond_ed

    .line 3225
    iget-object v3, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v4, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v3, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v3

    if-eqz v3, :cond_e8

    const-string v3, "0X"

    goto :goto_ea

    :cond_e8
    const-string v3, "0x"

    :goto_ea
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3226
    :cond_ed
    iget-object v3, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v4, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    invoke-virtual {v3, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v3

    if-eqz v3, :cond_103

    .line 3227
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_f8
    iget v4, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    sub-int/2addr v4, v2

    if-ge v3, v4, :cond_103

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_f8

    .line 3228
    .end local v3    # "i":I
    :cond_103
    iget-object v3, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v4, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v3, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v3

    if-eqz v3, :cond_111

    .line 3229
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 3230
    :cond_111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_116

    .line 3215
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "len":I
    :cond_115
    :goto_115
    nop

    .line 3234
    :goto_116
    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    # getter for: Ljava/util/Formatter;->a:Ljava/lang/Appendable;
    invoke-static {v1}, Ljava/util/Formatter;->access$000(Ljava/util/Formatter;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/util/Formatter$FormatSpecifier;->justify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 3235
    return-void
.end method

.method private greylist-max-o print(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3001
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_12

    .line 3002
    const/4 v0, 0x0

    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 3003
    :cond_12
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 3006
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    # getter for: Ljava/util/Formatter;->l:Ljava/util/Locale;
    invoke-static {v0}, Ljava/util/Formatter;->access$200(Ljava/util/Formatter;)Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    # getter for: Ljava/util/Formatter;->l:Ljava/util/Locale;
    invoke-static {v0}, Ljava/util/Formatter;->access$200(Ljava/util/Formatter;)Ljava/util/Locale;

    move-result-object v0

    goto :goto_2f

    :cond_2b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    :goto_2f
    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 3008
    :cond_33
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    # getter for: Ljava/util/Formatter;->a:Ljava/lang/Appendable;
    invoke-static {v0}, Ljava/util/Formatter;->access$000(Ljava/util/Formatter;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-direct {p0, p1}, Ljava/util/Formatter$FormatSpecifier;->justify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 3009
    return-void
.end method

.method private greylist-max-o print(Ljava/lang/StringBuilder;DLjava/util/Locale;Ljava/util/Formatter$Flags;CIZ)V
    .registers 33
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "value"    # D
    .param p4, "l"    # Ljava/util/Locale;
    .param p5, "f"    # Ljava/util/Formatter$Flags;
    .param p6, "c"    # C
    .param p7, "precision"    # I
    .param p8, "neg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3353
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    move-object/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    const-wide/16 v0, 0x0

    const/4 v2, 0x6

    const/16 v14, 0x65

    const/4 v3, -0x1

    const/4 v5, 0x1

    if-ne v11, v14, :cond_cc

    .line 3356
    if-ne v12, v3, :cond_1a

    goto :goto_1b

    :cond_1a
    move v2, v12

    :goto_1b
    move v14, v2

    .line 3358
    .local v14, "prec":I
    sget-object v2, Lsun/misc/FormattedFloatingDecimal$Form;->SCIENTIFIC:Lsun/misc/FormattedFloatingDecimal$Form;

    .line 3359
    invoke-static {v8, v9, v14, v2}, Lsun/misc/FormattedFloatingDecimal;->valueOf(DILsun/misc/FormattedFloatingDecimal$Form;)Lsun/misc/FormattedFloatingDecimal;

    move-result-object v16

    .line 3362
    .local v16, "fd":Lsun/misc/FormattedFloatingDecimal;
    invoke-virtual/range {v16 .. v16}, Lsun/misc/FormattedFloatingDecimal;->getMantissa()[C

    move-result-object v2

    invoke-direct {v6, v2, v14}, Ljava/util/Formatter$FormatSpecifier;->addZeros([CI)[C

    move-result-object v2

    .line 3366
    .local v2, "mant":[C
    sget-object v4, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    invoke-virtual {v10, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v4

    if-eqz v4, :cond_3b

    if-nez v14, :cond_3b

    .line 3367
    invoke-direct {v6, v2}, Ljava/util/Formatter$FormatSpecifier;->addDot([C)[C

    move-result-object v2

    move-object/from16 v17, v2

    goto :goto_3d

    .line 3369
    :cond_3b
    move-object/from16 v17, v2

    .end local v2    # "mant":[C
    .local v17, "mant":[C
    :goto_3d
    cmpl-double v0, v8, v0

    if-nez v0, :cond_48

    .line 3370
    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_256

    goto :goto_4c

    :cond_48
    invoke-virtual/range {v16 .. v16}, Lsun/misc/FormattedFloatingDecimal;->getExponent()[C

    move-result-object v0

    :goto_4c
    move-object v4, v0

    .line 3372
    .local v4, "exp":[C
    iget v0, v6, Ljava/util/Formatter$FormatSpecifier;->width:I

    .line 3373
    .local v0, "newW":I
    iget v1, v6, Ljava/util/Formatter$FormatSpecifier;->width:I

    if-eq v1, v3, :cond_5d

    .line 3374
    array-length v2, v4

    sub-int/2addr v1, v2

    sub-int/2addr v1, v5

    invoke-direct {v6, v1, v10, v13}, Ljava/util/Formatter$FormatSpecifier;->adjustWidth(ILjava/util/Formatter$Flags;Z)I

    move-result v0

    move/from16 v18, v0

    goto :goto_5f

    .line 3373
    :cond_5d
    move/from16 v18, v0

    .line 3375
    .end local v0    # "newW":I
    .local v18, "newW":I
    :goto_5f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, p5

    move-object v15, v4

    .end local v4    # "exp":[C
    .local v15, "exp":[C
    move/from16 v4, v18

    move/from16 v20, v14

    move v14, v5

    .end local v14    # "prec":I
    .local v20, "prec":I
    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    .line 3378
    if-eqz p4, :cond_77

    move-object/from16 v0, p4

    goto :goto_7b

    :cond_77
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    :goto_7b
    move-object v5, v0

    .line 3379
    .local v5, "separatorLocale":Ljava/util/Locale;
    invoke-static {v5}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v4

    .line 3380
    .local v4, "localeData":Llibcore/icu/LocaleData;
    sget-object v0, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v10, v0}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 3381
    iget-object v0, v4, Llibcore/icu/LocaleData;->exponentSeparator:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_95

    .line 3382
    :cond_8f
    iget-object v0, v4, Llibcore/icu/LocaleData;->exponentSeparator:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 3380
    :goto_95
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3385
    invoke-virtual/range {p5 .. p5}, Ljava/util/Formatter$Flags;->dup()Ljava/util/Formatter$Flags;

    move-result-object v0

    sget-object v1, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->remove(Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;

    move-result-object v21

    .line 3386
    .local v21, "flags":Ljava/util/Formatter$Flags;
    const/4 v0, 0x0

    aget-char v3, v15, v0

    .line 3387
    .local v3, "sign":C
    nop

    .line 3388
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3390
    array-length v0, v15

    sub-int/2addr v0, v14

    new-array v2, v0, [C

    .line 3391
    .local v2, "tmp":[C
    array-length v0, v15

    sub-int/2addr v0, v14

    const/4 v1, 0x0

    invoke-static {v15, v14, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3392
    const/4 v1, 0x0

    const/4 v14, -0x1

    move-object/from16 v0, p0

    move-object/from16 v19, v2

    .end local v2    # "tmp":[C
    .local v19, "tmp":[C
    move/from16 v22, v3

    .end local v3    # "sign":C
    .local v22, "sign":C
    move-object/from16 v3, v21

    move-object/from16 v23, v4

    .end local v4    # "localeData":Llibcore/icu/LocaleData;
    .local v23, "localeData":Llibcore/icu/LocaleData;
    move v4, v14

    move-object v14, v5

    .end local v5    # "separatorLocale":Ljava/util/Locale;
    .local v14, "separatorLocale":Ljava/util/Locale;
    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3393
    .end local v14    # "separatorLocale":Ljava/util/Locale;
    .end local v15    # "exp":[C
    .end local v16    # "fd":Lsun/misc/FormattedFloatingDecimal;
    .end local v17    # "mant":[C
    .end local v18    # "newW":I
    .end local v19    # "tmp":[C
    .end local v20    # "prec":I
    .end local v21    # "flags":Ljava/util/Formatter$Flags;
    .end local v22    # "sign":C
    .end local v23    # "localeData":Llibcore/icu/LocaleData;
    goto/16 :goto_254

    :cond_cc
    move v15, v14

    move v14, v5

    const/16 v4, 0x66

    if-ne v11, v4, :cond_118

    .line 3396
    if-ne v12, v3, :cond_d5

    goto :goto_d6

    :cond_d5
    move v2, v12

    :goto_d6
    move v14, v2

    .line 3398
    .local v14, "prec":I
    sget-object v0, Lsun/misc/FormattedFloatingDecimal$Form;->DECIMAL_FLOAT:Lsun/misc/FormattedFloatingDecimal$Form;

    .line 3399
    invoke-static {v8, v9, v14, v0}, Lsun/misc/FormattedFloatingDecimal;->valueOf(DILsun/misc/FormattedFloatingDecimal$Form;)Lsun/misc/FormattedFloatingDecimal;

    move-result-object v15

    .line 3402
    .local v15, "fd":Lsun/misc/FormattedFloatingDecimal;
    invoke-virtual {v15}, Lsun/misc/FormattedFloatingDecimal;->getMantissa()[C

    move-result-object v0

    invoke-direct {v6, v0, v14}, Ljava/util/Formatter$FormatSpecifier;->addZeros([CI)[C

    move-result-object v0

    .line 3406
    .local v0, "mant":[C
    sget-object v1, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    invoke-virtual {v10, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_f6

    if-nez v14, :cond_f6

    .line 3407
    invoke-direct {v6, v0}, Ljava/util/Formatter$FormatSpecifier;->addDot([C)[C

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_f8

    .line 3409
    :cond_f6
    move-object/from16 v16, v0

    .end local v0    # "mant":[C
    .local v16, "mant":[C
    :goto_f8
    iget v0, v6, Ljava/util/Formatter$FormatSpecifier;->width:I

    .line 3410
    .local v0, "newW":I
    iget v1, v6, Ljava/util/Formatter$FormatSpecifier;->width:I

    if-eq v1, v3, :cond_105

    .line 3411
    invoke-direct {v6, v1, v10, v13}, Ljava/util/Formatter$FormatSpecifier;->adjustWidth(ILjava/util/Formatter$Flags;Z)I

    move-result v0

    move/from16 v17, v0

    goto :goto_107

    .line 3410
    :cond_105
    move/from16 v17, v0

    .line 3412
    .end local v0    # "newW":I
    .local v17, "newW":I
    :goto_107
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-object/from16 v3, p5

    move/from16 v4, v17

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    .line 3413
    .end local v14    # "prec":I
    .end local v15    # "fd":Lsun/misc/FormattedFloatingDecimal;
    .end local v16    # "mant":[C
    .end local v17    # "newW":I
    goto/16 :goto_254

    :cond_118
    const/16 v2, 0x67

    const/16 v4, 0x30

    if-ne v11, v2, :cond_1dc

    .line 3414
    move/from16 v2, p7

    .line 3415
    .local v2, "prec":I
    if-ne v12, v3, :cond_124

    .line 3416
    const/4 v2, 0x6

    goto :goto_127

    .line 3417
    :cond_124
    if-nez v12, :cond_127

    .line 3418
    const/4 v2, 0x1

    .line 3423
    :cond_127
    :goto_127
    cmpl-double v0, v8, v0

    if-nez v0, :cond_136

    .line 3424
    const/4 v0, 0x0

    .line 3425
    .local v0, "exp":[C
    new-array v1, v14, [C

    const/4 v5, 0x0

    aput-char v4, v1, v5

    .line 3426
    .local v1, "mant":[C
    const/4 v4, 0x0

    move-object v5, v0

    move/from16 v16, v4

    .local v4, "expRounded":I
    goto :goto_14c

    .line 3428
    .end local v0    # "exp":[C
    .end local v1    # "mant":[C
    .end local v4    # "expRounded":I
    :cond_136
    sget-object v0, Lsun/misc/FormattedFloatingDecimal$Form;->GENERAL:Lsun/misc/FormattedFloatingDecimal$Form;

    .line 3429
    invoke-static {v8, v9, v2, v0}, Lsun/misc/FormattedFloatingDecimal;->valueOf(DILsun/misc/FormattedFloatingDecimal$Form;)Lsun/misc/FormattedFloatingDecimal;

    move-result-object v0

    .line 3431
    .local v0, "fd":Lsun/misc/FormattedFloatingDecimal;
    invoke-virtual {v0}, Lsun/misc/FormattedFloatingDecimal;->getExponent()[C

    move-result-object v1

    .line 3432
    .local v1, "exp":[C
    invoke-virtual {v0}, Lsun/misc/FormattedFloatingDecimal;->getMantissa()[C

    move-result-object v4

    .line 3433
    .local v4, "mant":[C
    invoke-virtual {v0}, Lsun/misc/FormattedFloatingDecimal;->getExponentRounded()I

    move-result v5

    move/from16 v16, v5

    move-object v5, v1

    move-object v1, v4

    .line 3436
    .end local v0    # "fd":Lsun/misc/FormattedFloatingDecimal;
    .end local v4    # "mant":[C
    .local v1, "mant":[C
    .local v5, "exp":[C
    .local v16, "expRounded":I
    :goto_14c
    if-eqz v5, :cond_151

    .line 3437
    add-int/2addr v2, v3

    move v4, v2

    goto :goto_155

    .line 3439
    :cond_151
    add-int/lit8 v0, v16, 0x1

    sub-int/2addr v2, v0

    move v4, v2

    .line 3442
    .end local v2    # "prec":I
    .local v4, "prec":I
    :goto_155
    invoke-direct {v6, v1, v4}, Ljava/util/Formatter$FormatSpecifier;->addZeros([CI)[C

    move-result-object v0

    .line 3445
    .end local v1    # "mant":[C
    .local v0, "mant":[C
    sget-object v1, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    invoke-virtual {v10, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_16a

    if-nez v4, :cond_16a

    .line 3446
    invoke-direct {v6, v0}, Ljava/util/Formatter$FormatSpecifier;->addDot([C)[C

    move-result-object v0

    move-object/from16 v17, v0

    goto :goto_16c

    .line 3448
    :cond_16a
    move-object/from16 v17, v0

    .end local v0    # "mant":[C
    .local v17, "mant":[C
    :goto_16c
    iget v0, v6, Ljava/util/Formatter$FormatSpecifier;->width:I

    .line 3449
    .local v0, "newW":I
    iget v1, v6, Ljava/util/Formatter$FormatSpecifier;->width:I

    if-eq v1, v3, :cond_185

    .line 3450
    if-eqz v5, :cond_17e

    .line 3451
    array-length v2, v5

    sub-int/2addr v1, v2

    sub-int/2addr v1, v14

    invoke-direct {v6, v1, v10, v13}, Ljava/util/Formatter$FormatSpecifier;->adjustWidth(ILjava/util/Formatter$Flags;Z)I

    move-result v0

    move/from16 v18, v0

    goto :goto_187

    .line 3453
    :cond_17e
    invoke-direct {v6, v1, v10, v13}, Ljava/util/Formatter$FormatSpecifier;->adjustWidth(ILjava/util/Formatter$Flags;Z)I

    move-result v0

    move/from16 v18, v0

    goto :goto_187

    .line 3449
    :cond_185
    move/from16 v18, v0

    .line 3455
    .end local v0    # "newW":I
    .restart local v18    # "newW":I
    :goto_187
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, p5

    move/from16 v20, v4

    .end local v4    # "prec":I
    .restart local v20    # "prec":I
    move/from16 v4, v18

    move-object v15, v5

    .end local v5    # "exp":[C
    .local v15, "exp":[C
    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    .line 3457
    if-eqz v15, :cond_253

    .line 3458
    sget-object v0, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v10, v0}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_1a6

    const/16 v0, 0x45

    goto :goto_1a8

    :cond_1a6
    const/16 v0, 0x65

    :goto_1a8
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3460
    invoke-virtual/range {p5 .. p5}, Ljava/util/Formatter$Flags;->dup()Ljava/util/Formatter$Flags;

    move-result-object v0

    sget-object v1, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->remove(Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;

    move-result-object v21

    .line 3461
    .restart local v21    # "flags":Ljava/util/Formatter$Flags;
    const/4 v0, 0x0

    aget-char v5, v15, v0

    .line 3462
    .local v5, "sign":C
    nop

    .line 3463
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3465
    array-length v0, v15

    sub-int/2addr v0, v14

    new-array v4, v0, [C

    .line 3466
    .local v4, "tmp":[C
    array-length v0, v15

    sub-int/2addr v0, v14

    const/4 v1, 0x0

    invoke-static {v15, v14, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3467
    const/4 v1, 0x0

    const/4 v14, -0x1

    move-object/from16 v0, p0

    move-object v2, v4

    move-object/from16 v3, v21

    move-object/from16 v19, v4

    .end local v4    # "tmp":[C
    .restart local v19    # "tmp":[C
    move v4, v14

    move v14, v5

    .end local v5    # "sign":C
    .local v14, "sign":C
    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_253

    .line 3469
    .end local v14    # "sign":C
    .end local v15    # "exp":[C
    .end local v16    # "expRounded":I
    .end local v17    # "mant":[C
    .end local v18    # "newW":I
    .end local v19    # "tmp":[C
    .end local v20    # "prec":I
    .end local v21    # "flags":Ljava/util/Formatter$Flags;
    :cond_1dc
    const/16 v0, 0x61

    if-ne v11, v0, :cond_253

    .line 3470
    move/from16 v0, p7

    .line 3471
    .local v0, "prec":I
    if-ne v12, v3, :cond_1e6

    .line 3473
    const/4 v0, 0x0

    goto :goto_1e9

    .line 3474
    :cond_1e6
    if-nez v12, :cond_1e9

    .line 3475
    const/4 v0, 0x1

    .line 3477
    :cond_1e9
    :goto_1e9
    invoke-direct {v6, v8, v9, v0}, Ljava/util/Formatter$FormatSpecifier;->hexDouble(DI)Ljava/lang/String;

    move-result-object v1

    .line 3480
    .local v1, "s":Ljava/lang/String;
    sget-object v2, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v10, v2}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v2

    .line 3481
    .local v2, "upper":Z
    if-eqz v2, :cond_1f8

    const-string v3, "0X"

    goto :goto_1fa

    :cond_1f8
    const-string v3, "0x"

    :goto_1fa
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3483
    sget-object v3, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    invoke-virtual {v10, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v3

    if-eqz v3, :cond_217

    .line 3484
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_206
    iget v5, v6, Ljava/util/Formatter$FormatSpecifier;->width:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v5, v14

    add-int/lit8 v5, v5, -0x2

    if-ge v3, v5, :cond_217

    .line 3485
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3484
    add-int/lit8 v3, v3, 0x1

    goto :goto_206

    .line 3487
    .end local v3    # "i":I
    :cond_217
    const/16 v3, 0x70

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 3488
    .local v4, "idx":I
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 3489
    .local v5, "va":[C
    if-eqz v2, :cond_237

    .line 3490
    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v5}, Ljava/lang/String;-><init>([C)V

    .line 3492
    .local v14, "tmp":Ljava/lang/String;
    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v14, v15}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    .line 3493
    invoke-virtual {v14}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 3495
    .end local v14    # "tmp":Ljava/lang/String;
    :cond_237
    if-eqz v0, :cond_23e

    invoke-direct {v6, v5, v0}, Ljava/util/Formatter$FormatSpecifier;->addZeros([CI)[C

    move-result-object v14

    goto :goto_23f

    :cond_23e
    move-object v14, v5

    :goto_23f
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 3496
    if-eqz v2, :cond_246

    const/16 v3, 0x50

    :cond_246
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3497
    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_254

    .line 3469
    .end local v0    # "prec":I
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "upper":Z
    .end local v4    # "idx":I
    .end local v5    # "va":[C
    :cond_253
    :goto_253
    nop

    .line 3499
    :goto_254
    return-void

    nop

    :array_256
    .array-data 2
        0x2bs
        0x30s
        0x30s
    .end array-data
.end method

.method private greylist-max-o print(Ljava/lang/StringBuilder;Ljava/math/BigDecimal;Ljava/util/Locale;Ljava/util/Formatter$Flags;CIZ)V
    .registers 36
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "value"    # Ljava/math/BigDecimal;
    .param p3, "l"    # Ljava/util/Locale;
    .param p4, "f"    # Ljava/util/Formatter$Flags;
    .param p5, "c"    # C
    .param p6, "precision"    # I
    .param p7, "neg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3647
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    const/4 v0, 0x6

    const/16 v6, 0x65

    const/4 v1, -0x1

    if-ne v12, v6, :cond_eb

    .line 3649
    if-ne v13, v1, :cond_17

    goto :goto_18

    :cond_17
    move v0, v13

    :goto_18
    move v5, v0

    .line 3650
    .local v5, "prec":I
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->scale()I

    move-result v4

    .line 3651
    .local v4, "scale":I
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->precision()I

    move-result v3

    .line 3652
    .local v3, "origPrec":I
    const/4 v0, 0x0

    .line 3655
    .local v0, "nzeros":I
    add-int/lit8 v2, v3, -0x1

    if-le v5, v2, :cond_31

    .line 3656
    move v2, v3

    .line 3657
    .local v2, "compPrec":I
    add-int/lit8 v16, v3, -0x1

    sub-int v0, v5, v16

    move/from16 v27, v2

    move v2, v0

    move/from16 v0, v27

    goto :goto_38

    .line 3659
    .end local v2    # "compPrec":I
    :cond_31
    add-int/lit8 v2, v5, 0x1

    move/from16 v27, v2

    move v2, v0

    move/from16 v0, v27

    .line 3662
    .local v0, "compPrec":I
    .local v2, "nzeros":I
    :goto_38
    new-instance v6, Ljava/math/MathContext;

    invoke-direct {v6, v0}, Ljava/math/MathContext;-><init>(I)V

    .line 3663
    .local v6, "mc":Ljava/math/MathContext;
    new-instance v7, Ljava/math/BigDecimal;

    .line 3664
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v7, v1, v4, v6}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;ILjava/math/MathContext;)V

    .line 3666
    .local v7, "v":Ljava/math/BigDecimal;
    new-instance v1, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;

    .line 3667
    invoke-virtual {v7}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v15

    move/from16 v20, v0

    .end local v0    # "compPrec":I
    .local v20, "compPrec":I
    invoke-virtual {v7}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    move/from16 v21, v4

    .end local v4    # "scale":I
    .local v21, "scale":I
    sget-object v4, Ljava/util/Formatter$BigDecimalLayoutForm;->SCIENTIFIC:Ljava/util/Formatter$BigDecimalLayoutForm;

    invoke-direct {v1, v8, v15, v0, v4}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;-><init>(Ljava/util/Formatter$FormatSpecifier;Ljava/math/BigInteger;ILjava/util/Formatter$BigDecimalLayoutForm;)V

    move-object v15, v1

    .line 3670
    .local v15, "bdl":Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;
    invoke-virtual {v15}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mantissa()[C

    move-result-object v0

    .line 3677
    .local v0, "mant":[C
    const/4 v1, 0x1

    if-eq v3, v1, :cond_67

    invoke-virtual {v15}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->hasDot()Z

    move-result v1

    if-nez v1, :cond_75

    :cond_67
    if-gtz v2, :cond_71

    sget-object v1, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    .line 3678
    invoke-virtual {v11, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 3679
    :cond_71
    invoke-direct {v8, v0}, Ljava/util/Formatter$FormatSpecifier;->addDot([C)[C

    move-result-object v0

    .line 3683
    :cond_75
    invoke-direct {v8, v0, v2}, Ljava/util/Formatter$FormatSpecifier;->trailingZeros([CI)[C

    move-result-object v22

    .line 3685
    .end local v0    # "mant":[C
    .local v22, "mant":[C
    invoke-virtual {v15}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exponent()[C

    move-result-object v4

    .line 3686
    .local v4, "exp":[C
    iget v0, v8, Ljava/util/Formatter$FormatSpecifier;->width:I

    .line 3687
    .local v0, "newW":I
    iget v1, v8, Ljava/util/Formatter$FormatSpecifier;->width:I

    move/from16 v23, v0

    const/4 v0, -0x1

    .end local v0    # "newW":I
    .local v23, "newW":I
    if-eq v1, v0, :cond_90

    .line 3688
    array-length v0, v4

    sub-int/2addr v1, v0

    const/4 v0, 0x1

    sub-int/2addr v1, v0

    invoke-direct {v8, v1, v11, v14}, Ljava/util/Formatter$FormatSpecifier;->adjustWidth(ILjava/util/Formatter$Flags;Z)I

    move-result v0

    move/from16 v23, v0

    .line 3689
    :cond_90
    move/from16 v18, v20

    .end local v20    # "compPrec":I
    .local v18, "compPrec":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v20, v2

    .end local v2    # "nzeros":I
    .local v20, "nzeros":I
    move-object/from16 v2, v22

    move/from16 v24, v3

    .end local v3    # "origPrec":I
    .local v24, "origPrec":I
    move-object/from16 v3, p4

    move-object/from16 v25, v6

    move-object v6, v4

    .end local v4    # "exp":[C
    .local v6, "exp":[C
    .local v25, "mc":Ljava/math/MathContext;
    move/from16 v4, v23

    move/from16 v26, v5

    .end local v5    # "prec":I
    .local v26, "prec":I
    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    .line 3691
    sget-object v0, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v11, v0}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_b5

    const/16 v0, 0x45

    goto :goto_b7

    :cond_b5
    const/16 v0, 0x65

    :goto_b7
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3693
    invoke-virtual/range {p4 .. p4}, Ljava/util/Formatter$Flags;->dup()Ljava/util/Formatter$Flags;

    move-result-object v0

    sget-object v1, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->remove(Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;

    move-result-object v16

    .line 3694
    .local v16, "flags":Ljava/util/Formatter$Flags;
    const/4 v1, 0x0

    aget-char v17, v6, v1

    .line 3695
    .local v17, "sign":C
    nop

    .line 3696
    aget-char v0, v6, v1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3698
    array-length v0, v6

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    new-array v5, v0, [C

    .line 3699
    .local v5, "tmp":[C
    array-length v0, v6

    sub-int/2addr v0, v2

    invoke-static {v6, v2, v5, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3700
    const/4 v1, 0x0

    const/4 v4, -0x1

    move-object/from16 v0, p0

    move-object v2, v5

    move-object/from16 v3, v16

    move-object/from16 v19, v5

    .end local v5    # "tmp":[C
    .local v19, "tmp":[C
    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3701
    .end local v6    # "exp":[C
    .end local v7    # "v":Ljava/math/BigDecimal;
    .end local v15    # "bdl":Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;
    .end local v16    # "flags":Ljava/util/Formatter$Flags;
    .end local v17    # "sign":C
    .end local v18    # "compPrec":I
    .end local v19    # "tmp":[C
    .end local v20    # "nzeros":I
    .end local v21    # "scale":I
    .end local v22    # "mant":[C
    .end local v23    # "newW":I
    .end local v24    # "origPrec":I
    .end local v25    # "mc":Ljava/math/MathContext;
    .end local v26    # "prec":I
    goto/16 :goto_1f8

    :cond_eb
    const/4 v1, 0x0

    const/16 v2, 0x66

    if-ne v12, v2, :cond_170

    .line 3703
    const/4 v2, -0x1

    if-ne v13, v2, :cond_f4

    goto :goto_f5

    :cond_f4
    move v0, v13

    :goto_f5
    move v6, v0

    .line 3704
    .local v6, "prec":I
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->scale()I

    move-result v7

    .line 3706
    .local v7, "scale":I
    if-le v7, v6, :cond_11c

    .line 3708
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->precision()I

    move-result v0

    .line 3709
    .local v0, "compPrec":I
    if-gt v0, v7, :cond_10a

    .line 3711
    sget-object v2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v10, v6, v2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v2

    move-object v10, v2

    .end local p2    # "value":Ljava/math/BigDecimal;
    .local v2, "value":Ljava/math/BigDecimal;
    goto :goto_11c

    .line 3713
    .end local v2    # "value":Ljava/math/BigDecimal;
    .restart local p2    # "value":Ljava/math/BigDecimal;
    :cond_10a
    sub-int v2, v7, v6

    sub-int/2addr v0, v2

    .line 3714
    new-instance v2, Ljava/math/BigDecimal;

    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v3

    new-instance v4, Ljava/math/MathContext;

    invoke-direct {v4, v0}, Ljava/math/MathContext;-><init>(I)V

    invoke-direct {v2, v3, v7, v4}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;ILjava/math/MathContext;)V

    move-object v10, v2

    .line 3719
    .end local v0    # "compPrec":I
    .end local p2    # "value":Ljava/math/BigDecimal;
    .local v10, "value":Ljava/math/BigDecimal;
    :cond_11c
    :goto_11c
    new-instance v0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;

    .line 3720
    invoke-virtual {v10}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v2

    .line 3721
    invoke-virtual {v10}, Ljava/math/BigDecimal;->scale()I

    move-result v3

    sget-object v4, Ljava/util/Formatter$BigDecimalLayoutForm;->DECIMAL_FLOAT:Ljava/util/Formatter$BigDecimalLayoutForm;

    invoke-direct {v0, v8, v2, v3, v4}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;-><init>(Ljava/util/Formatter$FormatSpecifier;Ljava/math/BigInteger;ILjava/util/Formatter$BigDecimalLayoutForm;)V

    move-object v15, v0

    .line 3724
    .restart local v15    # "bdl":Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;
    invoke-virtual {v15}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mantissa()[C

    move-result-object v0

    .line 3725
    .local v0, "mant":[C
    invoke-virtual {v15}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->scale()I

    move-result v2

    if-ge v2, v6, :cond_13c

    invoke-virtual {v15}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->scale()I

    move-result v1

    sub-int v1, v6, v1

    :cond_13c
    move v5, v1

    .line 3732
    .local v5, "nzeros":I
    invoke-virtual {v15}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->scale()I

    move-result v1

    if-nez v1, :cond_155

    sget-object v1, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    invoke-virtual {v11, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v1

    if-nez v1, :cond_14d

    if-lez v5, :cond_155

    .line 3733
    :cond_14d
    invoke-virtual {v15}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mantissa()[C

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/util/Formatter$FormatSpecifier;->addDot([C)[C

    move-result-object v0

    .line 3737
    :cond_155
    invoke-direct {v8, v0, v5}, Ljava/util/Formatter$FormatSpecifier;->trailingZeros([CI)[C

    move-result-object v16

    .line 3739
    .end local v0    # "mant":[C
    .local v16, "mant":[C
    iget v0, v8, Ljava/util/Formatter$FormatSpecifier;->width:I

    invoke-direct {v8, v0, v11, v14}, Ljava/util/Formatter$FormatSpecifier;->adjustWidth(ILjava/util/Formatter$Flags;Z)I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-object/from16 v3, p4

    move/from16 v17, v5

    .end local v5    # "nzeros":I
    .local v17, "nzeros":I
    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    .line 3740
    .end local v6    # "prec":I
    .end local v7    # "scale":I
    .end local v15    # "bdl":Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;
    .end local v16    # "mant":[C
    .end local v17    # "nzeros":I
    goto/16 :goto_1f8

    .end local v10    # "value":Ljava/math/BigDecimal;
    .restart local p2    # "value":Ljava/math/BigDecimal;
    :cond_170
    const/16 v0, 0x67

    if-ne v12, v0, :cond_1f2

    .line 3741
    move/from16 v0, p6

    .line 3742
    .local v0, "prec":I
    const/4 v1, -0x1

    if-ne v13, v1, :cond_17c

    .line 3743
    const/4 v0, 0x6

    move v15, v0

    goto :goto_182

    .line 3744
    :cond_17c
    if-nez v13, :cond_181

    .line 3745
    const/4 v0, 0x1

    move v15, v0

    goto :goto_182

    .line 3744
    :cond_181
    move v15, v0

    .line 3747
    .end local v0    # "prec":I
    .local v15, "prec":I
    :goto_182
    const/4 v0, 0x4

    const-wide/16 v1, 0x1

    invoke-static {v1, v2, v0}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v7

    .line 3748
    .local v7, "tenToTheNegFour":Ljava/math/BigDecimal;
    neg-int v0, v15

    invoke-static {v1, v2, v0}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v6

    .line 3749
    .local v6, "tenToThePrec":Ljava/math/BigDecimal;
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v10, v0}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c2

    .line 3750
    invoke-virtual {v10, v7}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1a8

    .line 3751
    invoke-virtual {v10, v6}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-ne v0, v1, :cond_1a8

    move-object/from16 v17, v6

    move-object/from16 v16, v7

    goto :goto_1c6

    .line 3771
    :cond_1a8
    const/16 v5, 0x65

    add-int/lit8 v16, v15, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v17, v6

    .end local v6    # "tenToThePrec":Ljava/math/BigDecimal;
    .local v17, "tenToThePrec":Ljava/math/BigDecimal;
    move/from16 v6, v16

    move-object/from16 v16, v7

    .end local v7    # "tenToTheNegFour":Ljava/math/BigDecimal;
    .local v16, "tenToTheNegFour":Ljava/math/BigDecimal;
    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/math/BigDecimal;Ljava/util/Locale;Ljava/util/Formatter$Flags;CIZ)V

    goto :goto_1f7

    .line 3749
    .end local v16    # "tenToTheNegFour":Ljava/math/BigDecimal;
    .end local v17    # "tenToThePrec":Ljava/math/BigDecimal;
    .restart local v6    # "tenToThePrec":Ljava/math/BigDecimal;
    .restart local v7    # "tenToTheNegFour":Ljava/math/BigDecimal;
    :cond_1c2
    move-object/from16 v17, v6

    move-object/from16 v16, v7

    .line 3753
    .end local v6    # "tenToThePrec":Ljava/math/BigDecimal;
    .end local v7    # "tenToTheNegFour":Ljava/math/BigDecimal;
    .restart local v16    # "tenToTheNegFour":Ljava/math/BigDecimal;
    .restart local v17    # "tenToThePrec":Ljava/math/BigDecimal;
    :goto_1c6
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    neg-int v0, v0

    .line 3754
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    add-int v18, v0, v1

    .line 3766
    .local v18, "e":I
    sub-int v0, v15, v18

    add-int/lit8 v15, v0, -0x1

    .line 3768
    const/16 v5, 0x66

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move v6, v15

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/math/BigDecimal;Ljava/util/Locale;Ljava/util/Formatter$Flags;CIZ)V

    .line 3770
    .end local v18    # "e":I
    goto :goto_1f7

    .line 3773
    .end local v15    # "prec":I
    .end local v16    # "tenToTheNegFour":Ljava/math/BigDecimal;
    .end local v17    # "tenToThePrec":Ljava/math/BigDecimal;
    :cond_1f2
    const/16 v0, 0x61

    if-ne v12, v0, :cond_1f7

    .line 3776
    goto :goto_1f8

    .line 3773
    :cond_1f7
    :goto_1f7
    nop

    .line 3778
    .end local p2    # "value":Ljava/math/BigDecimal;
    .restart local v10    # "value":Ljava/math/BigDecimal;
    :goto_1f8
    return-void
.end method

.method private greylist-max-o print(Ljava/math/BigDecimal;Ljava/util/Locale;)V
    .registers 14
    .param p1, "value"    # Ljava/math/BigDecimal;
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3624
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v1, 0x61

    if-ne v0, v1, :cond_9

    .line 3625
    invoke-direct {p0, v0, p1}, Ljava/util/Formatter$FormatSpecifier;->failConversion(CLjava/lang/Object;)V

    .line 3626
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3627
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_17

    const/4 v1, 0x1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    move v9, v1

    .line 3628
    .local v9, "neg":Z
    invoke-virtual {p1}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object v10

    .line 3630
    .local v10, "v":Ljava/math/BigDecimal;
    invoke-direct {p0, v0, v9}, Ljava/util/Formatter$FormatSpecifier;->leadingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 3633
    iget-object v5, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    iget-char v6, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    iget v7, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    move-object v1, p0

    move-object v2, v0

    move-object v3, v10

    move-object v4, p2

    move v8, v9

    invoke-direct/range {v1 .. v8}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/math/BigDecimal;Ljava/util/Locale;Ljava/util/Formatter$Flags;CIZ)V

    .line 3636
    invoke-direct {p0, v0, v9}, Ljava/util/Formatter$FormatSpecifier;->trailingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 3639
    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    # getter for: Ljava/util/Formatter;->a:Ljava/lang/Appendable;
    invoke-static {v1}, Ljava/util/Formatter;->access$000(Ljava/util/Formatter;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/util/Formatter$FormatSpecifier;->justify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 3640
    return-void
.end method

.method private greylist-max-o print(Ljava/math/BigInteger;Ljava/util/Locale;)V
    .registers 16
    .param p1, "value"    # Ljava/math/BigInteger;
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3263
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x1

    if-ne v1, v8, :cond_10

    move v1, v9

    goto :goto_11

    :cond_10
    move v1, v7

    :goto_11
    move v10, v1

    .line 3264
    .local v10, "neg":Z
    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v11

    .line 3267
    .local v11, "v":Ljava/math/BigInteger;
    invoke-direct {p0, v0, v10}, Ljava/util/Formatter$FormatSpecifier;->leadingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 3270
    iget-char v1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v2, 0x64

    if-ne v1, v2, :cond_38

    .line 3271
    invoke-virtual {v11}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v12

    .line 3272
    .local v12, "va":[C
    iget-object v4, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    invoke-direct {p0, v1, v4, v10}, Ljava/util/Formatter$FormatSpecifier;->adjustWidth(ILjava/util/Formatter$Flags;Z)I

    move-result v5

    move-object v1, p0

    move-object v2, v0

    move-object v3, v12

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    .line 3273
    .end local v12    # "va":[C
    goto/16 :goto_ec

    :cond_38
    const/16 v2, 0x6f

    const/16 v3, 0x30

    if-ne v1, v2, :cond_84

    .line 3274
    const/16 v1, 0x8

    invoke-virtual {v11, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 3276
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/2addr v2, v4

    .line 3277
    .local v2, "len":I
    if-eqz v10, :cond_5b

    iget-object v4, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v5, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    invoke-virtual {v4, v5}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 3278
    add-int/lit8 v2, v2, 0x1

    .line 3281
    :cond_5b
    iget-object v4, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v5, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    invoke-virtual {v4, v5}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 3282
    add-int/lit8 v2, v2, 0x1

    .line 3283
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3285
    :cond_6a
    iget-object v4, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v5, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    invoke-virtual {v4, v5}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v4

    if-eqz v4, :cond_80

    .line 3286
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_75
    iget v5, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    sub-int/2addr v5, v2

    if-ge v4, v5, :cond_80

    .line 3287
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3286
    add-int/lit8 v4, v4, 0x1

    goto :goto_75

    .line 3289
    .end local v4    # "i":I
    :cond_80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "len":I
    goto :goto_eb

    .line 3290
    :cond_84
    const/16 v2, 0x78

    if-ne v1, v2, :cond_eb

    .line 3291
    const/16 v1, 0x10

    invoke-virtual {v11, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 3293
    .restart local v1    # "s":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/2addr v2, v4

    .line 3294
    .restart local v2    # "len":I
    if-eqz v10, :cond_a5

    iget-object v4, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v5, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    invoke-virtual {v4, v5}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v4

    if-eqz v4, :cond_a5

    .line 3295
    add-int/lit8 v2, v2, 0x1

    .line 3298
    :cond_a5
    iget-object v4, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v5, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    invoke-virtual {v4, v5}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v4

    if-eqz v4, :cond_c3

    .line 3299
    add-int/lit8 v2, v2, 0x2

    .line 3300
    iget-object v4, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v5, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v4, v5}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v4

    if-eqz v4, :cond_be

    const-string v4, "0X"

    goto :goto_c0

    :cond_be
    const-string v4, "0x"

    :goto_c0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3302
    :cond_c3
    iget-object v4, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v5, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    invoke-virtual {v4, v5}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v4

    if-eqz v4, :cond_d9

    .line 3303
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_ce
    iget v5, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    sub-int/2addr v5, v2

    if-ge v4, v5, :cond_d9

    .line 3304
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3303
    add-int/lit8 v4, v4, 0x1

    goto :goto_ce

    .line 3305
    .end local v4    # "i":I
    :cond_d9
    iget-object v3, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v4, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v3, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v3

    if-eqz v3, :cond_e7

    .line 3306
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 3307
    :cond_e7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ec

    .line 3290
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "len":I
    :cond_eb
    :goto_eb
    nop

    .line 3311
    :goto_ec
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-ne v1, v8, :cond_f3

    move v7, v9

    :cond_f3
    invoke-direct {p0, v0, v7}, Ljava/util/Formatter$FormatSpecifier;->trailingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 3314
    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    # getter for: Ljava/util/Formatter;->a:Ljava/lang/Appendable;
    invoke-static {v1}, Ljava/util/Formatter;->access$000(Ljava/util/Formatter;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/util/Formatter$FormatSpecifier;->justify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 3315
    return-void
.end method

.method private greylist-max-o print(Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)V
    .registers 8
    .param p1, "t"    # Ljava/time/temporal/TemporalAccessor;
    .param p2, "c"    # C
    .param p3, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4161
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0, p1, p2, p3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    .line 4163
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/util/Formatter$FormatSpecifier;->justify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4164
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v2, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 4165
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 4166
    :cond_1e
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    # getter for: Ljava/util/Formatter;->a:Ljava/lang/Appendable;
    invoke-static {v2}, Ljava/util/Formatter;->access$000(Ljava/util/Formatter;)Ljava/lang/Appendable;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 4167
    return-void
.end method

.method private greylist-max-o print(Ljava/util/Calendar;CLjava/util/Locale;)V
    .registers 8
    .param p1, "t"    # Ljava/util/Calendar;
    .param p2, "c"    # C
    .param p3, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3939
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3940
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0, p1, p2, p3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    .line 3943
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/util/Formatter$FormatSpecifier;->justify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3944
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v2, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 3945
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 3947
    :cond_1e
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    # getter for: Ljava/util/Formatter;->a:Ljava/lang/Appendable;
    invoke-static {v2}, Ljava/util/Formatter;->access$000(Ljava/util/Formatter;)Ljava/lang/Appendable;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 3948
    return-void
.end method

.method private greylist-max-o print(SLjava/util/Locale;)V
    .registers 7
    .param p1, "value"    # S
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3160
    int-to-long v0, p1

    .line 3161
    .local v0, "v":J
    if-gez p1, :cond_11

    iget-char v2, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v3, 0x6f

    if-eq v2, v3, :cond_d

    const/16 v3, 0x78

    if-ne v2, v3, :cond_11

    .line 3164
    :cond_d
    const-wide/32 v2, 0x10000

    add-long/2addr v0, v2

    .line 3167
    :cond_11
    invoke-direct {p0, v0, v1, p2}, Ljava/util/Formatter$FormatSpecifier;->print(JLjava/util/Locale;)V

    .line 3168
    return-void
.end method

.method private greylist-max-o printBoolean(Ljava/lang/Object;)V
    .registers 3
    .param p1, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2984
    if-eqz p1, :cond_15

    .line 2985
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    .line 2986
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 2987
    :cond_e
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    :goto_13
    nop

    .local v0, "s":Ljava/lang/String;
    goto :goto_1a

    .line 2989
    .end local v0    # "s":Ljava/lang/String;
    :cond_15
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 2990
    .restart local v0    # "s":Ljava/lang/String;
    :goto_1a
    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;)V

    .line 2991
    return-void
.end method

.method private greylist-max-o printCharacter(Ljava/lang/Object;)V
    .registers 6
    .param p1, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2935
    if-nez p1, :cond_8

    .line 2936
    const-string v0, "null"

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;)V

    .line 2937
    return-void

    .line 2939
    :cond_8
    const/4 v0, 0x0

    .line 2940
    .local v0, "s":Ljava/lang/String;
    instance-of v1, p1, Ljava/lang/Character;

    if-eqz v1, :cond_16

    .line 2941
    move-object v1, p1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_81

    .line 2942
    :cond_16
    instance-of v1, p1, Ljava/lang/Byte;

    if-eqz v1, :cond_38

    .line 2943
    move-object v1, p1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    .line 2944
    .local v1, "i":B
    invoke-static {v1}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 2945
    new-instance v2, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    move-object v0, v2

    .line 2948
    .end local v1    # "i":B
    goto :goto_81

    .line 2947
    .restart local v1    # "i":B
    :cond_32
    new-instance v2, Ljava/util/IllegalFormatCodePointException;

    invoke-direct {v2, v1}, Ljava/util/IllegalFormatCodePointException;-><init>(I)V

    throw v2

    .line 2948
    .end local v1    # "i":B
    :cond_38
    instance-of v1, p1, Ljava/lang/Short;

    if-eqz v1, :cond_5a

    .line 2949
    move-object v1, p1

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    .line 2950
    .local v1, "i":S
    invoke-static {v1}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 2951
    new-instance v2, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    move-object v0, v2

    .line 2954
    .end local v1    # "i":S
    goto :goto_81

    .line 2953
    .restart local v1    # "i":S
    :cond_54
    new-instance v2, Ljava/util/IllegalFormatCodePointException;

    invoke-direct {v2, v1}, Ljava/util/IllegalFormatCodePointException;-><init>(I)V

    throw v2

    .line 2954
    .end local v1    # "i":S
    :cond_5a
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_7c

    .line 2955
    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2956
    .local v1, "i":I
    invoke-static {v1}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 2957
    new-instance v2, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    move-object v0, v2

    .line 2960
    .end local v1    # "i":I
    goto :goto_81

    .line 2959
    .restart local v1    # "i":I
    :cond_76
    new-instance v2, Ljava/util/IllegalFormatCodePointException;

    invoke-direct {v2, v1}, Ljava/util/IllegalFormatCodePointException;-><init>(I)V

    throw v2

    .line 2961
    .end local v1    # "i":I
    :cond_7c
    iget-char v1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-direct {p0, v1, p1}, Ljava/util/Formatter$FormatSpecifier;->failConversion(CLjava/lang/Object;)V

    .line 2963
    :goto_81
    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;)V

    .line 2964
    return-void
.end method

.method private greylist-max-o printDateTime(Ljava/lang/Object;Ljava/util/Locale;)V
    .registers 6
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2902
    if-nez p1, :cond_8

    .line 2903
    const-string v0, "null"

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;)V

    .line 2904
    return-void

    .line 2906
    :cond_8
    const/4 v0, 0x0

    .line 2910
    .local v0, "cal":Ljava/util/Calendar;
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_22

    .line 2913
    if-nez p2, :cond_12

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_13

    :cond_12
    move-object v1, p2

    :goto_13
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 2914
    move-object v1, p1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_5c

    .line 2915
    :cond_22
    instance-of v1, p1, Ljava/util/Date;

    if-eqz v1, :cond_37

    .line 2918
    if-nez p2, :cond_2b

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_2c

    :cond_2b
    move-object v1, p2

    :goto_2c
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 2919
    move-object v1, p1

    check-cast v1, Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_5c

    .line 2920
    :cond_37
    instance-of v1, p1, Ljava/util/Calendar;

    if-eqz v1, :cond_4a

    .line 2921
    move-object v1, p1

    check-cast v1, Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Calendar;

    .line 2922
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setLenient(Z)V

    goto :goto_5c

    .line 2923
    :cond_4a
    instance-of v1, p1, Ljava/time/temporal/TemporalAccessor;

    if-eqz v1, :cond_57

    .line 2924
    move-object v1, p1

    check-cast v1, Ljava/time/temporal/TemporalAccessor;

    iget-char v2, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-direct {p0, v1, v2, p2}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)V

    .line 2925
    return-void

    .line 2927
    :cond_57
    iget-char v1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-direct {p0, v1, p1}, Ljava/util/Formatter$FormatSpecifier;->failConversion(CLjava/lang/Object;)V

    .line 2931
    :goto_5c
    iget-char v1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-direct {p0, v0, v1, p2}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/util/Calendar;CLjava/util/Locale;)V

    .line 2932
    return-void
.end method

.method private greylist-max-o printFloat(Ljava/lang/Object;Ljava/util/Locale;)V
    .registers 5
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2889
    if-nez p1, :cond_8

    .line 2890
    const-string v0, "null"

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;)V

    goto :goto_36

    .line 2891
    :cond_8
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_17

    .line 2892
    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0, p2}, Ljava/util/Formatter$FormatSpecifier;->print(FLjava/util/Locale;)V

    goto :goto_36

    .line 2893
    :cond_17
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_26

    .line 2894
    move-object v0, p1

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/util/Formatter$FormatSpecifier;->print(DLjava/util/Locale;)V

    goto :goto_36

    .line 2895
    :cond_26
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_31

    .line 2896
    move-object v0, p1

    check-cast v0, Ljava/math/BigDecimal;

    invoke-direct {p0, v0, p2}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/math/BigDecimal;Ljava/util/Locale;)V

    goto :goto_36

    .line 2898
    :cond_31
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-direct {p0, v0, p1}, Ljava/util/Formatter$FormatSpecifier;->failConversion(CLjava/lang/Object;)V

    .line 2899
    :goto_36
    return-void
.end method

.method private greylist-max-o printHashCode(Ljava/lang/Object;)V
    .registers 3
    .param p1, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2994
    if-nez p1, :cond_5

    .line 2995
    const-string v0, "null"

    goto :goto_d

    .line 2996
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    :goto_d
    nop

    .line 2997
    .local v0, "s":Ljava/lang/String;
    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;)V

    .line 2998
    return-void
.end method

.method private greylist-max-o printInteger(Ljava/lang/Object;Ljava/util/Locale;)V
    .registers 5
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2872
    if-nez p1, :cond_8

    .line 2873
    const-string v0, "null"

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;)V

    goto :goto_54

    .line 2874
    :cond_8
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_17

    .line 2875
    move-object v0, p1

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-direct {p0, v0, p2}, Ljava/util/Formatter$FormatSpecifier;->print(BLjava/util/Locale;)V

    goto :goto_54

    .line 2876
    :cond_17
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_26

    .line 2877
    move-object v0, p1

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-direct {p0, v0, p2}, Ljava/util/Formatter$FormatSpecifier;->print(SLjava/util/Locale;)V

    goto :goto_54

    .line 2878
    :cond_26
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_35

    .line 2879
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p2}, Ljava/util/Formatter$FormatSpecifier;->print(ILjava/util/Locale;)V

    goto :goto_54

    .line 2880
    :cond_35
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_44

    .line 2881
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/util/Formatter$FormatSpecifier;->print(JLjava/util/Locale;)V

    goto :goto_54

    .line 2882
    :cond_44
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_4f

    .line 2883
    move-object v0, p1

    check-cast v0, Ljava/math/BigInteger;

    invoke-direct {p0, v0, p2}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/math/BigInteger;Ljava/util/Locale;)V

    goto :goto_54

    .line 2885
    :cond_4f
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-direct {p0, v0, p1}, Ljava/util/Formatter$FormatSpecifier;->failConversion(CLjava/lang/Object;)V

    .line 2886
    :goto_54
    return-void
.end method

.method private greylist-max-o printString(Ljava/lang/Object;Ljava/util/Locale;)V
    .registers 8
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2967
    instance-of v0, p1, Ljava/util/Formattable;

    if-eqz v0, :cond_27

    .line 2968
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    .line 2969
    .local v0, "fmt":Ljava/util/Formatter;
    invoke-virtual {v0}, Ljava/util/Formatter;->locale()Ljava/util/Locale;

    move-result-object v1

    if-eq v1, p2, :cond_16

    .line 2970
    new-instance v1, Ljava/util/Formatter;

    invoke-virtual {v0}, Ljava/util/Formatter;->out()Ljava/lang/Appendable;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    move-object v0, v1

    .line 2971
    :cond_16
    move-object v1, p1

    check-cast v1, Ljava/util/Formattable;

    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    invoke-virtual {v2}, Ljava/util/Formatter$Flags;->valueOf()I

    move-result v2

    iget v3, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    iget v4, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    invoke-interface {v1, v0, v2, v3, v4}, Ljava/util/Formattable;->formatTo(Ljava/util/Formatter;III)V

    .line 2972
    .end local v0    # "fmt":Ljava/util/Formatter;
    goto :goto_47

    .line 2973
    :cond_27
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 2974
    sget-object v0, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    const/16 v1, 0x73

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter$FormatSpecifier;->failMismatch(Ljava/util/Formatter$Flags;C)V

    .line 2975
    :cond_38
    if-nez p1, :cond_40

    .line 2976
    const-string v0, "null"

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;)V

    goto :goto_47

    .line 2978
    :cond_40
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;)V

    .line 2980
    :goto_47
    return-void
.end method

.method private greylist-max-o trailingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
    .registers 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "neg"    # Z

    .line 3256
    if-eqz p2, :cond_11

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3257
    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3258
    :cond_11
    return-object p1
.end method

.method private greylist-max-o trailingZeros([CI)[C
    .registers 6
    .param p1, "mant"    # [C
    .param p2, "nzeros"    # I

    .line 3927
    move-object v0, p1

    .line 3928
    .local v0, "tmp":[C
    if-lez p2, :cond_17

    .line 3929
    array-length v1, p1

    add-int/2addr v1, p2

    new-array v0, v1, [C

    .line 3930
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3931
    array-length v1, p1

    .local v1, "i":I
    :goto_d
    array-length v2, v0

    if-ge v1, v2, :cond_17

    .line 3932
    const/16 v2, 0x30

    aput-char v2, v0, v1

    .line 3931
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 3934
    .end local v1    # "i":I
    :cond_17
    return-object v0
.end method

.method private greylist-max-o width(Ljava/lang/String;)I
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 2741
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    .line 2742
    if-eqz p1, :cond_15

    .line 2744
    :try_start_5
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    .line 2745
    if-ltz v0, :cond_e

    .line 2749
    goto :goto_15

    .line 2746
    :cond_e
    new-instance v1, Ljava/util/IllegalFormatWidthException;

    invoke-direct {v1, v0}, Ljava/util/IllegalFormatWidthException;-><init>(I)V

    .end local p0    # "this":Ljava/util/Formatter$FormatSpecifier;
    .end local p1    # "s":Ljava/lang/String;
    throw v1
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_14} :catch_14

    .line 2747
    .restart local p0    # "this":Ljava/util/Formatter$FormatSpecifier;
    .restart local p1    # "s":Ljava/lang/String;
    :catch_14
    move-exception v0

    .line 2751
    :cond_15
    :goto_15
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    return v0
.end method


# virtual methods
.method greylist-max-o flags()Ljava/util/Formatter$Flags;
    .registers 2

    .line 2737
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    return-object v0
.end method

.method public greylist-max-o index()I
    .registers 2

    .line 2726
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->index:I

    return v0
.end method

.method greylist-max-o precision()I
    .registers 2

    .line 2775
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    return v0
.end method

.method public greylist-max-o print(Ljava/lang/Object;Ljava/util/Locale;)V
    .registers 5
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2831
    iget-boolean v0, p0, Ljava/util/Formatter$FormatSpecifier;->dt:Z

    if-eqz v0, :cond_8

    .line 2832
    invoke-direct {p0, p1, p2}, Ljava/util/Formatter$FormatSpecifier;->printDateTime(Ljava/lang/Object;Ljava/util/Locale;)V

    .line 2833
    return-void

    .line 2835
    :cond_8
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v1, 0x25

    if-eq v0, v1, :cond_4c

    const/16 v1, 0x43

    if-eq v0, v1, :cond_48

    const/16 v1, 0x73

    if-eq v0, v1, :cond_44

    const/16 v1, 0x78

    if-eq v0, v1, :cond_40

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_32

    const/16 v1, 0x6f

    if-eq v0, v1, :cond_40

    packed-switch v0, :pswitch_data_58

    .line 2867
    goto :goto_56

    .line 2858
    :pswitch_26
    invoke-direct {p0, p1}, Ljava/util/Formatter$FormatSpecifier;->printHashCode(Ljava/lang/Object;)V

    .line 2859
    goto :goto_56

    .line 2852
    :pswitch_2a
    invoke-direct {p0, p1}, Ljava/util/Formatter$FormatSpecifier;->printBoolean(Ljava/lang/Object;)V

    .line 2853
    goto :goto_56

    .line 2845
    :pswitch_2e
    invoke-direct {p0, p1, p2}, Ljava/util/Formatter$FormatSpecifier;->printFloat(Ljava/lang/Object;Ljava/util/Locale;)V

    .line 2846
    goto :goto_56

    .line 2861
    :cond_32
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    # getter for: Ljava/util/Formatter;->a:Ljava/lang/Appendable;
    invoke-static {v0}, Ljava/util/Formatter;->access$000(Ljava/util/Formatter;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 2862
    goto :goto_56

    .line 2839
    :cond_40
    :pswitch_40
    invoke-direct {p0, p1, p2}, Ljava/util/Formatter$FormatSpecifier;->printInteger(Ljava/lang/Object;Ljava/util/Locale;)V

    .line 2840
    goto :goto_56

    .line 2855
    :cond_44
    invoke-direct {p0, p1, p2}, Ljava/util/Formatter$FormatSpecifier;->printString(Ljava/lang/Object;Ljava/util/Locale;)V

    .line 2856
    goto :goto_56

    .line 2849
    :cond_48
    :pswitch_48
    invoke-direct {p0, p1}, Ljava/util/Formatter$FormatSpecifier;->printCharacter(Ljava/lang/Object;)V

    .line 2850
    goto :goto_56

    .line 2864
    :cond_4c
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    # getter for: Ljava/util/Formatter;->a:Ljava/lang/Appendable;
    invoke-static {v0}, Ljava/util/Formatter;->access$000(Ljava/util/Formatter;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 2865
    nop

    .line 2869
    :goto_56
    return-void

    nop

    :pswitch_data_58
    .packed-switch 0x61
        :pswitch_2e
        :pswitch_2a
        :pswitch_48
        :pswitch_40
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_26
    .end packed-switch
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 5

    .line 3026
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3028
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    invoke-virtual {v1}, Ljava/util/Formatter$Flags;->dup()Ljava/util/Formatter$Flags;

    move-result-object v1

    sget-object v2, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v1, v2}, Ljava/util/Formatter$Flags;->remove(Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;

    move-result-object v1

    .line 3029
    .local v1, "dupf":Ljava/util/Formatter$Flags;
    invoke-virtual {v1}, Ljava/util/Formatter$Flags;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3030
    iget v2, p0, Ljava/util/Formatter$FormatSpecifier;->index:I

    if-lez v2, :cond_26

    .line 3031
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3032
    :cond_26
    iget v2, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2e

    .line 3033
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3034
    :cond_2e
    iget v2, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    if-eq v2, v3, :cond_3c

    .line 3035
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3036
    :cond_3c
    iget-boolean v2, p0, Ljava/util/Formatter$FormatSpecifier;->dt:Z

    if-eqz v2, :cond_52

    .line 3037
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v2, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v2

    if-eqz v2, :cond_4d

    const/16 v2, 0x54

    goto :goto_4f

    :cond_4d
    const/16 v2, 0x74

    :goto_4f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3038
    :cond_52
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v2, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 3039
    iget-char v2, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    goto :goto_65

    :cond_63
    iget-char v2, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    .line 3038
    :goto_65
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3040
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method greylist-max-o width()I
    .registers 2

    .line 2755
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    return v0
.end method
