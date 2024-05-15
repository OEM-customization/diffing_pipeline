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
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field final synthetic $assertionsDisabled:Z

.field private c:C

.field private dt:Z

.field private f:Ljava/util/Formatter$Flags;

.field private index:I

.field private precision:I

.field final synthetic this$0:Ljava/util/Formatter;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Ljava/util/Formatter$FormatSpecifier;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    .line 2701
    return-void
.end method

.method constructor <init>(Ljava/util/Formatter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "this$0"    # Ljava/util/Formatter;
    .param p2, "indexStr"    # Ljava/lang/String;
    .param p3, "flagsStr"    # Ljava/lang/String;
    .param p4, "widthStr"    # Ljava/lang/String;
    .param p5, "precisionStr"    # Ljava/lang/String;
    .param p6, "tTStr"    # Ljava/lang/String;
    .param p7, "convStr"    # Ljava/lang/String;

    .prologue
    .line 2795
    iput-object p1, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    .line 2796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2702
    const/4 v1, -0x1

    iput v1, p0, Ljava/util/Formatter$FormatSpecifier;->index:I

    .line 2703
    sget-object v1, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    iput-object v1, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    .line 2706
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/Formatter$FormatSpecifier;->dt:Z

    .line 2798
    const/4 v0, 0x1

    .line 2800
    .local v0, "idx":I
    invoke-direct {p0, p2}, Ljava/util/Formatter$FormatSpecifier;->index(Ljava/lang/String;)I

    .line 2801
    invoke-direct {p0, p3}, Ljava/util/Formatter$FormatSpecifier;->flags(Ljava/lang/String;)Ljava/util/Formatter$Flags;

    .line 2802
    invoke-direct {p0, p4}, Ljava/util/Formatter$FormatSpecifier;->width(Ljava/lang/String;)I

    .line 2803
    invoke-direct {p0, p5}, Ljava/util/Formatter$FormatSpecifier;->precision(Ljava/lang/String;)I

    .line 2805
    if-eqz p6, :cond_31

    .line 2806
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/Formatter$FormatSpecifier;->dt:Z

    .line 2807
    const-string/jumbo v1, "T"

    invoke-virtual {p6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 2808
    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v2, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-static {v1, v2}, Ljava/util/Formatter$Flags;->-wrap0(Ljava/util/Formatter$Flags;Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;

    .line 2811
    :cond_31
    invoke-direct {p0, p7}, Ljava/util/Formatter$FormatSpecifier;->conversion(Ljava/lang/String;)C

    .line 2813
    iget-boolean v1, p0, Ljava/util/Formatter$FormatSpecifier;->dt:Z

    if-eqz v1, :cond_3c

    .line 2814
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifier;->checkDateTime()V

    .line 2827
    :goto_3b
    return-void

    .line 2815
    :cond_3c
    iget-char v1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v1}, Ljava/util/Formatter$Conversion;->isGeneral(C)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 2816
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifier;->checkGeneral()V

    goto :goto_3b

    .line 2817
    :cond_48
    iget-char v1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v1}, Ljava/util/Formatter$Conversion;->isCharacter(C)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 2818
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifier;->checkCharacter()V

    goto :goto_3b

    .line 2819
    :cond_54
    iget-char v1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v1}, Ljava/util/Formatter$Conversion;->isInteger(C)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 2820
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifier;->checkInteger()V

    goto :goto_3b

    .line 2821
    :cond_60
    iget-char v1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v1}, Ljava/util/Formatter$Conversion;->isFloat(C)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 2822
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifier;->checkFloat()V

    goto :goto_3b

    .line 2823
    :cond_6c
    iget-char v1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v1}, Ljava/util/Formatter$Conversion;->isText(C)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 2824
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifier;->checkText()V

    goto :goto_3b

    .line 2826
    :cond_78
    new-instance v1, Ljava/util/UnknownFormatConversionException;

    iget-char v2, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private addDot([C)[C
    .registers 5
    .param p1, "mant"    # [C

    .prologue
    const/4 v2, 0x0

    .line 3916
    move-object v0, p1

    .line 3917
    .local v0, "tmp":[C
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [C

    .line 3918
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 3919
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x2e

    aput-char v2, v0, v1

    .line 3920
    return-object v0
.end method

.method private addZeros([CI)[C
    .registers 14
    .param p1, "v"    # [C
    .param p2, "prec"    # I

    .prologue
    const/16 v10, 0x2e

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3505
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    array-length v6, p1

    if-ge v0, v6, :cond_c

    .line 3506
    aget-char v6, p1, v0

    if-ne v6, v10, :cond_25

    .line 3509
    :cond_c
    const/4 v2, 0x0

    .line 3510
    .local v2, "needDot":Z
    array-length v6, p1

    if-ne v0, v6, :cond_11

    .line 3511
    const/4 v2, 0x1

    .line 3515
    :cond_11
    array-length v6, p1

    sub-int v9, v6, v0

    if-eqz v2, :cond_28

    move v6, v7

    :goto_17
    sub-int v3, v9, v6

    .line 3516
    .local v3, "outPrec":I
    sget-boolean v6, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v6, :cond_2a

    if-le v3, p2, :cond_2a

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 3505
    .end local v2    # "needDot":Z
    .end local v3    # "outPrec":I
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .restart local v2    # "needDot":Z
    :cond_28
    move v6, v8

    .line 3515
    goto :goto_17

    .line 3517
    .restart local v3    # "outPrec":I
    :cond_2a
    if-ne v3, p2, :cond_2d

    .line 3518
    return-object p1

    .line 3522
    :cond_2d
    array-length v6, p1

    add-int/2addr v6, p2

    sub-int/2addr v6, v3

    if-eqz v2, :cond_4c

    :goto_32
    add-int/2addr v6, v8

    new-array v5, v6, [C

    .line 3523
    .local v5, "tmp":[C
    array-length v6, p1

    invoke-static {p1, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 3526
    array-length v4, p1

    .line 3527
    .local v4, "start":I
    if-eqz v2, :cond_41

    .line 3528
    array-length v6, p1

    aput-char v10, v5, v6

    .line 3529
    add-int/lit8 v4, v4, 0x1

    .line 3533
    :cond_41
    move v1, v4

    .local v1, "j":I
    :goto_42
    array-length v6, v5

    if-ge v1, v6, :cond_4e

    .line 3534
    const/16 v6, 0x30

    aput-char v6, v5, v1

    .line 3533
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .end local v1    # "j":I
    .end local v4    # "start":I
    .end local v5    # "tmp":[C
    :cond_4c
    move v8, v7

    .line 3522
    goto :goto_32

    .line 3536
    .restart local v1    # "j":I
    .restart local v4    # "start":I
    .restart local v5    # "tmp":[C
    :cond_4e
    return-object v5
.end method

.method private adjustWidth(ILjava/util/Formatter$Flags;Z)I
    .registers 6
    .param p1, "width"    # I
    .param p2, "f"    # Ljava/util/Formatter$Flags;
    .param p3, "neg"    # Z

    .prologue
    .line 3908
    move v0, p1

    .line 3909
    .local v0, "newW":I
    const/4 v1, -0x1

    if-eq p1, v1, :cond_10

    if-eqz p3, :cond_10

    sget-object v1, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    invoke-virtual {p2, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 3910
    add-int/lit8 v0, p1, -0x1

    .line 3911
    :cond_10
    return v0
.end method

.method private varargs checkBadFlags([Ljava/util/Formatter$Flags;)V
    .registers 5
    .param p1, "badFlags"    # [Ljava/util/Formatter$Flags;

    .prologue
    .line 3089
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_18

    .line 3090
    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 3091
    aget-object v1, p1, v0

    iget-char v2, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-direct {p0, v1, v2}, Ljava/util/Formatter$FormatSpecifier;->failMismatch(Ljava/util/Formatter$Flags;C)V

    .line 3089
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3092
    :cond_18
    return-void
.end method

.method private checkCharacter()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 3066
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    if-eq v0, v3, :cond_d

    .line 3067
    new-instance v0, Ljava/util/IllegalFormatPrecisionException;

    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    throw v0

    .line 3068
    :cond_d
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 3069
    sget-object v1, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 3068
    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    .line 3071
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    if-ne v0, v3, :cond_49

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 3072
    new-instance v0, Ljava/util/MissingFormatWidthException;

    invoke-virtual {p0}, Ljava/util/Formatter$FormatSpecifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/MissingFormatWidthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3073
    :cond_49
    return-void
.end method

.method private checkDateTime()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 3054
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    if-eq v0, v3, :cond_d

    .line 3055
    new-instance v0, Ljava/util/IllegalFormatPrecisionException;

    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    throw v0

    .line 3056
    :cond_d
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v0}, Ljava/util/Formatter$DateTime;->isValid(C)Z

    move-result v0

    if-nez v0, :cond_31

    .line 3057
    new-instance v0, Ljava/util/UnknownFormatConversionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3058
    :cond_31
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 3059
    sget-object v1, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 3058
    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    .line 3061
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    if-ne v0, v3, :cond_6d

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 3062
    new-instance v0, Ljava/util/MissingFormatWidthException;

    invoke-virtual {p0}, Ljava/util/Formatter$FormatSpecifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/MissingFormatWidthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3063
    :cond_6d
    return-void
.end method

.method private checkFloat()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3095
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifier;->checkNumeric()V

    .line 3096
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v1, 0x66

    if-ne v0, v1, :cond_c

    .line 3104
    :cond_b
    :goto_b
    return-void

    .line 3097
    :cond_c
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v1, 0x61

    if-ne v0, v1, :cond_21

    .line 3098
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    aput-object v1, v0, v3

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    goto :goto_b

    .line 3099
    :cond_21
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v1, 0x65

    if-ne v0, v1, :cond_31

    .line 3100
    new-array v0, v3, [Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    goto :goto_b

    .line 3101
    :cond_31
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v1, 0x67

    if-ne v0, v1, :cond_b

    .line 3102
    new-array v0, v3, [Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    goto :goto_b
.end method

.method private checkGeneral()V
    .registers 4

    .prologue
    .line 3043
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v1, 0x62

    if-eq v0, v1, :cond_c

    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v1, 0x68

    if-ne v0, v1, :cond_1d

    .line 3044
    :cond_c
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    .line 3043
    if-eqz v0, :cond_1d

    .line 3045
    sget-object v0, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    iget-char v1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter$FormatSpecifier;->failMismatch(Ljava/util/Formatter$Flags;C)V

    .line 3047
    :cond_1d
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_36

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 3048
    new-instance v0, Ljava/util/MissingFormatWidthException;

    invoke-virtual {p0}, Ljava/util/Formatter$FormatSpecifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/MissingFormatWidthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3049
    :cond_36
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 3050
    sget-object v1, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 3049
    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    .line 3051
    return-void
.end method

.method private checkInteger()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3076
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifier;->checkNumeric()V

    .line 3077
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    .line 3078
    new-instance v0, Ljava/util/IllegalFormatPrecisionException;

    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    throw v0

    .line 3080
    :cond_12
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v1, 0x64

    if-ne v0, v1, :cond_22

    .line 3081
    new-array v0, v3, [Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    .line 3086
    :goto_21
    return-void

    .line 3082
    :cond_22
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_32

    .line 3083
    new-array v0, v3, [Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    goto :goto_21

    .line 3085
    :cond_32
    new-array v0, v3, [Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    goto :goto_21
.end method

.method private checkNumeric()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 3107
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    if-eq v0, v1, :cond_11

    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    if-gez v0, :cond_11

    .line 3108
    new-instance v0, Ljava/util/IllegalFormatWidthException;

    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatWidthException;-><init>(I)V

    throw v0

    .line 3110
    :cond_11
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    if-eq v0, v1, :cond_21

    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    if-gez v0, :cond_21

    .line 3111
    new-instance v0, Ljava/util/IllegalFormatPrecisionException;

    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    throw v0

    .line 3114
    :cond_21
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    if-ne v0, v1, :cond_43

    .line 3115
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    .line 3114
    if-eqz v0, :cond_43

    .line 3116
    :cond_39
    new-instance v0, Ljava/util/MissingFormatWidthException;

    invoke-virtual {p0}, Ljava/util/Formatter$FormatSpecifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/MissingFormatWidthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3119
    :cond_43
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-nez v0, :cond_6b

    .line 3120
    :cond_57
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_77

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    .line 3119
    if-eqz v0, :cond_77

    .line 3121
    :cond_6b
    new-instance v0, Ljava/util/IllegalFormatFlagsException;

    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    invoke-virtual {v1}, Ljava/util/Formatter$Flags;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatFlagsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3122
    :cond_77
    return-void
.end method

.method private checkText()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 3125
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    if-eq v0, v2, :cond_d

    .line 3126
    new-instance v0, Ljava/util/IllegalFormatPrecisionException;

    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    throw v0

    .line 3127
    :cond_d
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    sparse-switch v0, :sswitch_data_84

    .line 3143
    sget-boolean v0, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v0, :cond_82

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3129
    :sswitch_1c
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    invoke-virtual {v0}, Ljava/util/Formatter$Flags;->valueOf()I

    move-result v0

    sget-object v1, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    invoke-virtual {v1}, Ljava/util/Formatter$Flags;->valueOf()I

    move-result v1

    if-eq v0, v1, :cond_44

    .line 3130
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    invoke-virtual {v0}, Ljava/util/Formatter$Flags;->valueOf()I

    move-result v0

    sget-object v1, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    invoke-virtual {v1}, Ljava/util/Formatter$Flags;->valueOf()I

    move-result v1

    if-eq v0, v1, :cond_44

    .line 3131
    new-instance v0, Ljava/util/IllegalFormatFlagsException;

    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    invoke-virtual {v1}, Ljava/util/Formatter$Flags;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatFlagsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3133
    :cond_44
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    if-ne v0, v2, :cond_82

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 3134
    new-instance v0, Ljava/util/MissingFormatWidthException;

    invoke-virtual {p0}, Ljava/util/Formatter$FormatSpecifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/MissingFormatWidthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3137
    :sswitch_5c
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    if-eq v0, v2, :cond_68

    .line 3138
    new-instance v0, Ljava/util/IllegalFormatWidthException;

    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatWidthException;-><init>(I)V

    throw v0

    .line 3139
    :cond_68
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    invoke-virtual {v0}, Ljava/util/Formatter$Flags;->valueOf()I

    move-result v0

    sget-object v1, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    invoke-virtual {v1}, Ljava/util/Formatter$Flags;->valueOf()I

    move-result v1

    if-eq v0, v1, :cond_82

    .line 3140
    new-instance v0, Ljava/util/IllegalFormatFlagsException;

    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    invoke-virtual {v1}, Ljava/util/Formatter$Flags;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatFlagsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3145
    :cond_82
    return-void

    .line 3127
    nop

    :sswitch_data_84
    .sparse-switch
        0x25 -> :sswitch_1c
        0x6e -> :sswitch_5c
    .end sparse-switch
.end method

.method private conversion()C
    .registers 2

    .prologue
    .line 2792
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    return v0
.end method

.method private conversion(Ljava/lang/String;)C
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2778
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    .line 2779
    iget-boolean v0, p0, Ljava/util/Formatter$FormatSpecifier;->dt:Z

    if-nez v0, :cond_41

    .line 2780
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v0}, Ljava/util/Formatter$Conversion;->isValid(C)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 2781
    new-instance v0, Ljava/util/UnknownFormatConversionException;

    iget-char v1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2782
    :cond_1f
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2783
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-static {v0, v1}, Ljava/util/Formatter$Flags;->-wrap0(Ljava/util/Formatter$Flags;Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;

    .line 2784
    :cond_2e
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    .line 2785
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v0}, Ljava/util/Formatter$Conversion;->isText(C)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 2786
    const/4 v0, -0x2

    iput v0, p0, Ljava/util/Formatter$FormatSpecifier;->index:I

    .line 2788
    :cond_41
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    return v0
.end method

.method private failConversion(CLjava/lang/Object;)V
    .registers 5
    .param p1, "c"    # C
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 4402
    new-instance v0, Ljava/util/IllegalFormatConversionException;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/util/IllegalFormatConversionException;-><init>(CLjava/lang/Class;)V

    throw v0
.end method

.method private failMismatch(Ljava/util/Formatter$Flags;C)V
    .registers 5
    .param p1, "f"    # Ljava/util/Formatter$Flags;
    .param p2, "c"    # C

    .prologue
    .line 4397
    invoke-virtual {p1}, Ljava/util/Formatter$Flags;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4398
    .local v0, "fs":Ljava/lang/String;
    new-instance v1, Ljava/util/FormatFlagsConversionMismatchException;

    invoke-direct {v1, v0, p2}, Ljava/util/FormatFlagsConversionMismatchException;-><init>(Ljava/lang/String;C)V

    throw v1
.end method

.method private flags(Ljava/lang/String;)Ljava/util/Formatter$Flags;
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2729
    invoke-static {p1}, Ljava/util/Formatter$Flags;->parse(Ljava/lang/String;)Ljava/util/Formatter$Flags;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    .line 2730
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->PREVIOUS:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2731
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/Formatter$FormatSpecifier;->index:I

    .line 2732
    :cond_13
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    return-object v0
.end method

.method private getZero(Ljava/util/Locale;)C
    .registers 4
    .param p1, "l"    # Ljava/util/Locale;

    .prologue
    .line 4406
    if-eqz p1, :cond_19

    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-virtual {v1}, Ljava/util/Formatter;->locale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_19

    .line 4407
    invoke-static {p1}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    .line 4408
    .local v0, "dfs":Ljava/text/DecimalFormatSymbols;
    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v1

    return v1

    .line 4410
    .end local v0    # "dfs":Ljava/text/DecimalFormatSymbols;
    :cond_19
    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-static {v1}, Ljava/util/Formatter;->-get3(Ljava/util/Formatter;)C

    move-result v1

    return v1
.end method

.method private hexDouble(DI)Ljava/lang/String;
    .registers 35
    .param p1, "d"    # D
    .param p3, "prec"    # I

    .prologue
    .line 3542
    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->isFinite(D)Z

    move-result v25

    if-eqz v25, :cond_c

    const-wide/16 v26, 0x0

    cmpl-double v25, p1, v26

    if-nez v25, :cond_17

    .line 3544
    :cond_c
    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->toHexString(D)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x2

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    return-object v25

    .line 3542
    :cond_17
    if-eqz p3, :cond_c

    const/16 v25, 0xd

    move/from16 v0, p3

    move/from16 v1, v25

    if-ge v0, v1, :cond_c

    .line 3546
    sget-boolean v25, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v25, :cond_3b

    const/16 v25, 0x1

    move/from16 v0, p3

    move/from16 v1, v25

    if-lt v0, v1, :cond_35

    const/16 v25, 0xc

    move/from16 v0, p3

    move/from16 v1, v25

    if-le v0, v1, :cond_3b

    :cond_35
    new-instance v25, Ljava/lang/AssertionError;

    invoke-direct/range {v25 .. v25}, Ljava/lang/AssertionError;-><init>()V

    throw v25

    .line 3548
    :cond_3b
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->getExponent(D)I

    move-result v7

    .line 3550
    .local v7, "exponent":I
    const/16 v25, -0x3ff

    move/from16 v0, v25

    if-ne v7, v0, :cond_7c

    const/16 v24, 0x1

    .line 3554
    .local v24, "subnormal":Z
    :goto_47
    if-eqz v24, :cond_7f

    .line 3555
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    const/16 v25, 0x36

    move-wide/from16 v0, v26

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Ljava/lang/Math;->scalb(DI)D

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/util/Formatter;->-set0(D)D

    .line 3556
    invoke-static {}, Ljava/util/Formatter;->-get2()D

    move-result-wide v26

    mul-double p1, p1, v26

    .line 3559
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->getExponent(D)I

    move-result v7

    .line 3560
    sget-boolean v25, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v25, :cond_7f

    const/16 v25, -0x3fe

    move/from16 v0, v25

    if-lt v7, v0, :cond_72

    .line 3561
    const/16 v25, 0x3ff

    move/from16 v0, v25

    if-le v7, v0, :cond_7f

    .line 3560
    :cond_72
    new-instance v25, Ljava/lang/AssertionError;

    .line 3561
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    .line 3560
    invoke-direct/range {v25 .. v26}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v25

    .line 3550
    .end local v24    # "subnormal":Z
    :cond_7c
    const/16 v24, 0x0

    .restart local v24    # "subnormal":Z
    goto :goto_47

    .line 3564
    :cond_7f
    mul-int/lit8 v25, p3, 0x4

    add-int/lit8 v11, v25, 0x1

    .line 3566
    .local v11, "precision":I
    rsub-int/lit8 v20, v11, 0x35

    .line 3567
    .local v20, "shiftDistance":I
    sget-boolean v25, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v25, :cond_9f

    const/16 v25, 0x1

    move/from16 v0, v20

    move/from16 v1, v25

    if-lt v0, v1, :cond_99

    const/16 v25, 0x35

    move/from16 v0, v20

    move/from16 v1, v25

    if-lt v0, v1, :cond_9f

    :cond_99
    new-instance v25, Ljava/lang/AssertionError;

    invoke-direct/range {v25 .. v25}, Ljava/lang/AssertionError;-><init>()V

    throw v25

    .line 3569
    :cond_9f
    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 3572
    .local v4, "doppel":J
    const-wide v26, 0x7fffffffffffffffL

    and-long v26, v26, v4

    shr-long v12, v26, v20

    .line 3576
    .local v12, "newSignif":J
    const-wide/16 v26, -0x1

    shl-long v26, v26, v20

    move-wide/from16 v0, v26

    not-long v0, v0

    move-wide/from16 v26, v0

    and-long v18, v4, v26

    .line 3583
    .local v18, "roundingBits":J
    const-wide/16 v26, 0x1

    and-long v26, v26, v12

    const-wide/16 v28, 0x0

    cmp-long v25, v26, v28

    if-nez v25, :cond_112

    const/4 v10, 0x1

    .line 3585
    .local v10, "leastZero":Z
    :goto_c2
    add-int/lit8 v25, v20, -0x1

    const-wide/16 v26, 0x1

    shl-long v26, v26, v25

    and-long v26, v26, v18

    const-wide/16 v28, 0x0

    cmp-long v25, v26, v28

    if-eqz v25, :cond_114

    const/4 v15, 0x1

    .line 3586
    .local v15, "round":Z
    :goto_d1
    const/16 v25, 0x1

    move/from16 v0, v20

    move/from16 v1, v25

    if-le v0, v1, :cond_119

    .line 3587
    add-int/lit8 v25, v20, -0x1

    const-wide/16 v26, 0x1

    shl-long v26, v26, v25

    move-wide/from16 v0, v26

    not-long v0, v0

    move-wide/from16 v26, v0

    and-long v26, v26, v18

    const-wide/16 v28, 0x0

    cmp-long v25, v26, v28

    if-eqz v25, :cond_116

    const/16 v21, 0x1

    .line 3588
    .local v21, "sticky":Z
    :goto_ee
    if-eqz v10, :cond_f4

    if-eqz v15, :cond_f4

    if-nez v21, :cond_f8

    :cond_f4
    if-nez v10, :cond_fc

    if-eqz v15, :cond_fc

    .line 3589
    :cond_f8
    const-wide/16 v26, 0x1

    add-long v12, v12, v26

    .line 3592
    :cond_fc
    const-wide/high16 v26, -0x8000000000000000L

    and-long v22, v4, v26

    .line 3593
    .local v22, "signBit":J
    shl-long v26, v12, v20

    or-long v12, v22, v26

    .line 3594
    invoke-static {v12, v13}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v16

    .line 3596
    .local v16, "result":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v25

    if-eqz v25, :cond_11c

    .line 3598
    const-string/jumbo v25, "1.0p1024"

    return-object v25

    .line 3583
    .end local v10    # "leastZero":Z
    .end local v15    # "round":Z
    .end local v16    # "result":D
    .end local v21    # "sticky":Z
    .end local v22    # "signBit":J
    :cond_112
    const/4 v10, 0x0

    .restart local v10    # "leastZero":Z
    goto :goto_c2

    .line 3585
    :cond_114
    const/4 v15, 0x0

    .restart local v15    # "round":Z
    goto :goto_d1

    .line 3587
    :cond_116
    const/16 v21, 0x0

    .restart local v21    # "sticky":Z
    goto :goto_ee

    .line 3586
    .end local v21    # "sticky":Z
    :cond_119
    const/16 v21, 0x0

    .restart local v21    # "sticky":Z
    goto :goto_ee

    .line 3600
    .restart local v16    # "result":D
    .restart local v22    # "signBit":J
    :cond_11c
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->toHexString(D)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x2

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 3601
    .local v14, "res":Ljava/lang/String;
    if-nez v24, :cond_129

    .line 3602
    return-object v14

    .line 3605
    :cond_129
    const/16 v25, 0x70

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 3606
    .local v8, "idx":I
    const/16 v25, -0x1

    move/from16 v0, v25

    if-ne v8, v0, :cond_144

    .line 3608
    sget-boolean v25, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v25, :cond_141

    new-instance v25, Ljava/lang/AssertionError;

    invoke-direct/range {v25 .. v25}, Ljava/lang/AssertionError;-><init>()V

    throw v25

    .line 3609
    :cond_141
    const/16 v25, 0x0

    return-object v25

    .line 3612
    :cond_144
    add-int/lit8 v25, v8, 0x1

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 3613
    .local v6, "exp":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    add-int/lit8 v9, v25, -0x36

    .line 3614
    .local v9, "iexp":I
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v14, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "p"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 3615
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    .line 3614
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    return-object v25
.end method

.method private index(Ljava/lang/String;)I
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2710
    if-eqz p1, :cond_16

    .line 2714
    :try_start_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ljava/util/Formatter$FormatSpecifier;->index:I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_8} :catch_b

    .line 2721
    :cond_8
    :goto_8
    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->index:I

    return v1

    .line 2715
    :catch_b
    move-exception v0

    .line 2716
    .local v0, "x":Ljava/lang/NumberFormatException;
    sget-boolean v1, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v1, :cond_8

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2719
    .end local v0    # "x":Ljava/lang/NumberFormatException;
    :cond_16
    const/4 v1, 0x0

    iput v1, p0, Ljava/util/Formatter$FormatSpecifier;->index:I

    goto :goto_8
.end method

.method private justify(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x20

    .line 3011
    iget v4, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_8

    .line 3012
    return-object p1

    .line 3013
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3014
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v4, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v5, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    invoke-virtual {v4, v5}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v1

    .line 3015
    .local v1, "pad":Z
    iget v4, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v3, v4, v5

    .line 3016
    .local v3, "sp":I
    if-nez v1, :cond_28

    .line 3017
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_20
    if-ge v0, v3, :cond_28

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 3018
    .end local v0    # "i":I
    :cond_28
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3019
    if-eqz v1, :cond_36

    .line 3020
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2e
    if-ge v0, v3, :cond_36

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 3021
    .end local v0    # "i":I
    :cond_36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private leadingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
    .registers 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "neg"    # Z

    .prologue
    .line 3238
    if-nez p2, :cond_22

    .line 3239
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3240
    const/16 v0, 0x2b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3250
    :cond_11
    :goto_11
    return-object p1

    .line 3241
    :cond_12
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3242
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 3245
    :cond_22
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 3246
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 3248
    :cond_32
    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_11
.end method

.method private localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;
    .registers 13
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "value"    # J
    .param p4, "f"    # Ljava/util/Formatter$Flags;
    .param p5, "width"    # I
    .param p6, "l"    # Ljava/util/Locale;

    .prologue
    .line 4417
    const/16 v0, 0xa

    invoke-static {p2, p3, v0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .local v2, "va":[C
    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    .line 4418
    invoke-direct/range {v0 .. v5}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;
    .registers 21
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "value"    # [C
    .param p3, "f"    # Ljava/util/Formatter$Flags;
    .param p4, "width"    # I
    .param p5, "l"    # Ljava/util/Locale;

    .prologue
    .line 4425
    if-nez p1, :cond_7

    .line 4426
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1    # "sb":Ljava/lang/StringBuilder;
    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4427
    .restart local p1    # "sb":Ljava/lang/StringBuilder;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 4429
    .local v1, "begin":I
    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->getZero(Ljava/util/Locale;)C

    move-result v12

    .line 4432
    .local v12, "zero":C
    const/4 v7, 0x0

    .line 4433
    .local v7, "grpSep":C
    const/4 v8, -0x1

    .line 4434
    .local v8, "grpSize":I
    const/4 v3, 0x0

    .line 4436
    .local v3, "decSep":C
    move-object/from16 v0, p2

    array-length v11, v0

    .line 4437
    .local v11, "len":I
    move v6, v11

    .line 4438
    .local v6, "dot":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_19
    if-ge v9, v11, :cond_22

    .line 4439
    aget-char v13, p2, v9

    const/16 v14, 0x2e

    if-ne v13, v14, :cond_59

    .line 4440
    move v6, v9

    .line 4445
    :cond_22
    if-ge v6, v11, :cond_32

    .line 4446
    if-eqz p5, :cond_30

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5c

    .line 4447
    :cond_30
    const/16 v3, 0x2e

    .line 4454
    .end local v3    # "decSep":C
    :cond_32
    :goto_32
    sget-object v13, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v13

    if-eqz v13, :cond_4b

    .line 4455
    if-eqz p5, :cond_48

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_65

    .line 4456
    :cond_48
    const/16 v7, 0x2c

    .line 4457
    const/4 v8, 0x3

    .line 4475
    .end local v7    # "grpSep":C
    :cond_4b
    :goto_4b
    const/4 v9, 0x0

    :goto_4c
    if-ge v9, v11, :cond_a2

    .line 4476
    if-ne v9, v6, :cond_85

    .line 4477
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4479
    const/4 v7, 0x0

    .line 4475
    :cond_56
    :goto_56
    add-int/lit8 v9, v9, 0x1

    goto :goto_4c

    .line 4438
    .restart local v3    # "decSep":C
    .restart local v7    # "grpSep":C
    :cond_59
    add-int/lit8 v9, v9, 0x1

    goto :goto_19

    .line 4449
    :cond_5c
    invoke-static/range {p5 .. p5}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v5

    .line 4450
    .local v5, "dfs":Ljava/text/DecimalFormatSymbols;
    invoke-virtual {v5}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v3

    .local v3, "decSep":C
    goto :goto_32

    .line 4459
    .end local v3    # "decSep":C
    .end local v5    # "dfs":Ljava/text/DecimalFormatSymbols;
    :cond_65
    invoke-static/range {p5 .. p5}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v5

    .line 4460
    .restart local v5    # "dfs":Ljava/text/DecimalFormatSymbols;
    invoke-virtual {v5}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v7

    .line 4461
    .local v7, "grpSep":C
    invoke-static/range {p5 .. p5}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v4

    check-cast v4, Ljava/text/DecimalFormat;

    .line 4462
    .local v4, "df":Ljava/text/DecimalFormat;
    invoke-virtual {v4}, Ljava/text/DecimalFormat;->getGroupingSize()I

    move-result v8

    .line 4467
    invoke-virtual {v4}, Ljava/text/DecimalFormat;->isGroupingUsed()Z

    move-result v13

    if-eqz v13, :cond_83

    invoke-virtual {v4}, Ljava/text/DecimalFormat;->getGroupingSize()I

    move-result v13

    if-nez v13, :cond_4b

    .line 4468
    :cond_83
    const/4 v7, 0x0

    .local v7, "grpSep":C
    goto :goto_4b

    .line 4483
    .end local v4    # "df":Ljava/text/DecimalFormat;
    .end local v5    # "dfs":Ljava/text/DecimalFormatSymbols;
    .end local v7    # "grpSep":C
    :cond_85
    aget-char v2, p2, v9

    .line 4484
    .local v2, "c":C
    add-int/lit8 v13, v2, -0x30

    add-int/2addr v13, v12

    int-to-char v13, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4485
    if-eqz v7, :cond_56

    add-int/lit8 v13, v6, -0x1

    if-eq v9, v13, :cond_56

    sub-int v13, v6, v9

    rem-int/2addr v13, v8

    const/4 v14, 0x1

    if-ne v13, v14, :cond_56

    .line 4486
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_56

    .line 4490
    .end local v2    # "c":C
    :cond_a2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    .line 4491
    const/4 v13, -0x1

    move/from16 v0, p4

    if-eq v0, v13, :cond_c2

    sget-object v13, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v13

    if-eqz v13, :cond_c2

    .line 4492
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_b6
    sub-int v13, p4, v11

    if-ge v10, v13, :cond_c2

    .line 4493
    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v12}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 4492
    add-int/lit8 v10, v10, 0x1

    goto :goto_b6

    .line 4495
    .end local v10    # "k":I
    :cond_c2
    return-object p1
.end method

.method private precision(Ljava/lang/String;)I
    .registers 5
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2758
    const/4 v1, -0x1

    iput v1, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    .line 2759
    if-eqz p1, :cond_22

    .line 2763
    :try_start_5
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    .line 2764
    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    if-gez v1, :cond_22

    .line 2765
    new-instance v1, Ljava/util/IllegalFormatPrecisionException;

    iget v2, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    invoke-direct {v1, v2}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    throw v1
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_17} :catch_17

    .line 2766
    :catch_17
    move-exception v0

    .line 2767
    .local v0, "x":Ljava/lang/NumberFormatException;
    sget-boolean v1, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v1, :cond_22

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2770
    .end local v0    # "x":Ljava/lang/NumberFormatException;
    :cond_22
    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    return v1
.end method

.method private print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;
    .registers 41
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "t"    # Ljava/time/temporal/TemporalAccessor;
    .param p3, "c"    # C
    .param p4, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4170
    if-nez p1, :cond_7

    .line 4171
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1    # "sb":Ljava/lang/StringBuilder;
    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4173
    .restart local p1    # "sb":Ljava/lang/StringBuilder;
    :cond_7
    packed-switch p3, :pswitch_data_4c6

    .line 4386
    :pswitch_a
    :try_start_a
    sget-boolean v4, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v4, :cond_3d

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_14
    .catch Ljava/time/DateTimeException; {:try_start_a .. :try_end_14} :catch_14

    .line 4388
    .end local p4    # "l":Ljava/util/Locale;
    :catch_14
    move-exception v34

    .line 4389
    .local v34, "x":Ljava/time/DateTimeException;
    new-instance v4, Ljava/util/IllegalFormatConversionException;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move/from16 v0, p3

    invoke-direct {v4, v0, v5}, Ljava/util/IllegalFormatConversionException;-><init>(CLjava/lang/Class;)V

    throw v4

    .line 4175
    .end local v34    # "x":Ljava/time/DateTimeException;
    .restart local p4    # "l":Ljava/util/Locale;
    :pswitch_21
    :try_start_21
    sget-object v4, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v25

    .line 4176
    .local v25, "i":I
    move/from16 v0, v25

    int-to-long v6, v0

    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    const/4 v5, 0x0

    const/4 v9, 0x2

    move-object/from16 v4, p0

    move-object/from16 v10, p4

    invoke-direct/range {v4 .. v10}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4391
    .end local v25    # "i":I
    .end local p4    # "l":Ljava/util/Locale;
    :cond_3d
    :goto_3d
    return-object p1

    .line 4180
    .restart local p4    # "l":Ljava/util/Locale;
    :pswitch_3e
    sget-object v4, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v25

    .line 4181
    .restart local v25    # "i":I
    move/from16 v0, v25

    int-to-long v6, v0

    sget-object v8, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    const/4 v5, 0x0

    const/4 v9, 0x2

    move-object/from16 v4, p0

    move-object/from16 v10, p4

    invoke-direct/range {v4 .. v10}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 4185
    .end local v25    # "i":I
    :pswitch_5b
    sget-object v4, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v25

    .line 4186
    .restart local v25    # "i":I
    move/from16 v0, v25

    int-to-long v6, v0

    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    const/4 v5, 0x0

    const/4 v9, 0x2

    move-object/from16 v4, p0

    move-object/from16 v10, p4

    invoke-direct/range {v4 .. v10}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 4190
    .end local v25    # "i":I
    :pswitch_78
    sget-object v4, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v25

    .line 4191
    .restart local v25    # "i":I
    move/from16 v0, v25

    int-to-long v6, v0

    sget-object v8, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    const/4 v5, 0x0

    const/4 v9, 0x2

    move-object/from16 v4, p0

    move-object/from16 v10, p4

    invoke-direct/range {v4 .. v10}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 4195
    .end local v25    # "i":I
    :pswitch_95
    sget-object v4, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v25

    .line 4196
    .restart local v25    # "i":I
    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 4197
    .local v8, "flags":Ljava/util/Formatter$Flags;
    move/from16 v0, v25

    int-to-long v6, v0

    const/4 v5, 0x0

    const/4 v9, 0x2

    move-object/from16 v4, p0

    move-object/from16 v10, p4

    invoke-direct/range {v4 .. v10}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 4201
    .end local v8    # "flags":Ljava/util/Formatter$Flags;
    .end local v25    # "i":I
    :pswitch_b2
    sget-object v4, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v4

    const v5, 0xf4240

    mul-int v25, v4, v5

    .line 4202
    .restart local v25    # "i":I
    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 4203
    .restart local v8    # "flags":Ljava/util/Formatter$Flags;
    move/from16 v0, v25

    int-to-long v6, v0

    const/4 v5, 0x0

    const/16 v9, 0x9

    move-object/from16 v4, p0

    move-object/from16 v10, p4

    invoke-direct/range {v4 .. v10}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_3d

    .line 4207
    .end local v8    # "flags":Ljava/util/Formatter$Flags;
    .end local v25    # "i":I
    :pswitch_d6
    sget-object v4, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v25

    .line 4208
    .restart local v25    # "i":I
    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 4209
    .restart local v8    # "flags":Ljava/util/Formatter$Flags;
    move/from16 v0, v25

    int-to-long v6, v0

    const/4 v5, 0x0

    const/4 v9, 0x3

    move-object/from16 v4, p0

    move-object/from16 v10, p4

    invoke-direct/range {v4 .. v10}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_3d

    .line 4213
    .end local v8    # "flags":Ljava/util/Formatter$Flags;
    .end local v25    # "i":I
    :pswitch_f4
    sget-object v4, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v4

    const-wide/16 v10, 0x3e8

    mul-long/2addr v4, v10

    .line 4214
    sget-object v9, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v10

    .line 4213
    add-long v6, v4, v10

    .line 4215
    .local v6, "i":J
    sget-object v8, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    .line 4216
    .restart local v8    # "flags":Ljava/util/Formatter$Flags;
    move-object/from16 v0, p0

    iget v9, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    const/4 v5, 0x0

    move-object/from16 v4, p0

    move-object/from16 v10, p4

    invoke-direct/range {v4 .. v10}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_3d

    .line 4221
    .end local v6    # "i":J
    .end local v8    # "flags":Ljava/util/Formatter$Flags;
    :pswitch_11f
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v23, v0

    const-string/jumbo v4, "AM"

    const/4 v5, 0x0

    aput-object v4, v23, v5

    const-string/jumbo v4, "PM"

    const/4 v5, 0x1

    aput-object v4, v23, v5

    .line 4222
    .local v23, "ampm":[Ljava/lang/String;
    if-eqz p4, :cond_140

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, p4

    if-eq v0, v4, :cond_140

    .line 4223
    invoke-static/range {p4 .. p4}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v24

    .line 4224
    .local v24, "dfs":Ljava/text/DateFormatSymbols;
    invoke-virtual/range {v24 .. v24}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v23

    .line 4226
    .end local v24    # "dfs":Ljava/text/DateFormatSymbols;
    :cond_140
    sget-object v4, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v4

    aget-object v31, v23, v4

    .line 4227
    .local v31, "s":Ljava/lang/String;
    if-eqz p4, :cond_15b

    .end local p4    # "l":Ljava/util/Locale;
    :goto_14c
    move-object/from16 v0, v31

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3d

    .restart local p4    # "l":Ljava/util/Locale;
    :cond_15b
    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_14c

    .line 4231
    .end local v23    # "ampm":[Ljava/lang/String;
    .end local v31    # "s":Ljava/lang/String;
    :pswitch_15e
    sget-object v4, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v6

    .line 4232
    .restart local v6    # "i":J
    sget-object v8, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    .line 4233
    .restart local v8    # "flags":Ljava/util/Formatter$Flags;
    move-object/from16 v0, p0

    iget v9, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    const/4 v5, 0x0

    move-object/from16 v4, p0

    move-object/from16 v10, p4

    invoke-direct/range {v4 .. v10}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_3d

    .line 4237
    .end local v6    # "i":J
    .end local v8    # "flags":Ljava/util/Formatter$Flags;
    :pswitch_17c
    sget-object v4, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v25

    .line 4238
    .restart local v25    # "i":I
    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 4239
    .restart local v8    # "flags":Ljava/util/Formatter$Flags;
    move/from16 v0, v25

    int-to-long v12, v0

    const/4 v11, 0x0

    const/4 v15, 0x2

    move-object/from16 v10, p0

    move-object v14, v8

    move-object/from16 v16, p4

    invoke-direct/range {v10 .. v16}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_3d

    .line 4243
    .end local v8    # "flags":Ljava/util/Formatter$Flags;
    .end local v25    # "i":I
    :pswitch_19b
    sget-object v4, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v25

    .line 4244
    .restart local v25    # "i":I
    if-gez v25, :cond_1d8

    const/16 v29, 0x1

    .line 4245
    .local v29, "neg":Z
    :goto_1a7
    if-eqz v29, :cond_1db

    const/16 v4, 0x2d

    :goto_1ab
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4246
    if-eqz v29, :cond_1b7

    .line 4247
    move/from16 v0, v25

    neg-int v0, v0

    move/from16 v25, v0

    .line 4248
    :cond_1b7
    div-int/lit8 v28, v25, 0x3c

    .line 4250
    .local v28, "min":I
    div-int/lit8 v4, v28, 0x3c

    mul-int/lit8 v4, v4, 0x64

    rem-int/lit8 v5, v28, 0x3c

    add-int v30, v4, v5

    .line 4251
    .local v30, "offset":I
    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 4252
    .restart local v8    # "flags":Ljava/util/Formatter$Flags;
    move/from16 v0, v30

    int-to-long v12, v0

    const/4 v11, 0x0

    const/4 v15, 0x4

    move-object/from16 v10, p0

    move-object v14, v8

    move-object/from16 v16, p4

    invoke-direct/range {v10 .. v16}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_3d

    .line 4244
    .end local v8    # "flags":Ljava/util/Formatter$Flags;
    .end local v28    # "min":I
    .end local v29    # "neg":Z
    .end local v30    # "offset":I
    :cond_1d8
    const/16 v29, 0x0

    .restart local v29    # "neg":Z
    goto :goto_1a7

    .line 4245
    :cond_1db
    const/16 v4, 0x2b

    goto :goto_1ab

    .line 4256
    .end local v25    # "i":I
    .end local v29    # "neg":Z
    :pswitch_1de
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zone()Ljava/time/temporal/TemporalQuery;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/time/ZoneId;

    .line 4257
    .local v35, "zid":Ljava/time/ZoneId;
    if-nez v35, :cond_1f8

    .line 4258
    new-instance v4, Ljava/util/IllegalFormatConversionException;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move/from16 v0, p3

    invoke-direct {v4, v0, v5}, Ljava/util/IllegalFormatConversionException;-><init>(CLjava/lang/Class;)V

    throw v4

    .line 4260
    :cond_1f8
    move-object/from16 v0, v35

    instance-of v4, v0, Ljava/time/ZoneOffset;

    if-nez v4, :cond_230

    .line 4261
    sget-object v4, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v4

    .line 4260
    if-eqz v4, :cond_230

    .line 4262
    invoke-static/range {p2 .. p2}, Ljava/time/Instant;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object v26

    .line 4263
    .local v26, "instant":Ljava/time/Instant;
    invoke-virtual/range {v35 .. v35}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .line 4264
    invoke-virtual/range {v35 .. v35}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/time/zone/ZoneRules;->isDaylightSavings(Ljava/time/Instant;)Z

    move-result v5

    .line 4266
    if-nez p4, :cond_222

    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 4265
    .end local p4    # "l":Ljava/util/Locale;
    :cond_222
    const/4 v9, 0x0

    .line 4263
    move-object/from16 v0, p4

    invoke-virtual {v4, v5, v9, v0}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3d

    .line 4269
    .end local v26    # "instant":Ljava/time/Instant;
    .restart local p4    # "l":Ljava/util/Locale;
    :cond_230
    invoke-virtual/range {v35 .. v35}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3d

    .line 4275
    .end local v35    # "zid":Ljava/time/ZoneId;
    :pswitch_23b
    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v4

    rem-int/lit8 v4, v4, 0x7

    add-int/lit8 v25, v4, 0x1

    .line 4276
    .restart local v25    # "i":I
    if-nez p4, :cond_262

    sget-object v27, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 4277
    .local v27, "lt":Ljava/util/Locale;
    :goto_24b
    invoke-static/range {v27 .. v27}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v24

    .line 4278
    .restart local v24    # "dfs":Ljava/text/DateFormatSymbols;
    const/16 v4, 0x41

    move/from16 v0, p3

    if-ne v0, v4, :cond_265

    .line 4279
    invoke-virtual/range {v24 .. v24}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v25

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3d

    .line 4276
    .end local v24    # "dfs":Ljava/text/DateFormatSymbols;
    .end local v27    # "lt":Ljava/util/Locale;
    :cond_262
    move-object/from16 v27, p4

    .restart local v27    # "lt":Ljava/util/Locale;
    goto :goto_24b

    .line 4281
    .restart local v24    # "dfs":Ljava/text/DateFormatSymbols;
    :cond_265
    invoke-virtual/range {v24 .. v24}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v25

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3d

    .line 4287
    .end local v24    # "dfs":Ljava/text/DateFormatSymbols;
    .end local v25    # "i":I
    .end local v27    # "lt":Ljava/util/Locale;
    :pswitch_272
    sget-object v4, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v4

    add-int/lit8 v25, v4, -0x1

    .line 4288
    .restart local v25    # "i":I
    if-nez p4, :cond_297

    sget-object v27, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 4289
    .restart local v27    # "lt":Ljava/util/Locale;
    :goto_280
    invoke-static/range {v27 .. v27}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v24

    .line 4290
    .restart local v24    # "dfs":Ljava/text/DateFormatSymbols;
    const/16 v4, 0x42

    move/from16 v0, p3

    if-ne v0, v4, :cond_29a

    .line 4291
    invoke-virtual/range {v24 .. v24}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v25

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3d

    .line 4288
    .end local v24    # "dfs":Ljava/text/DateFormatSymbols;
    .end local v27    # "lt":Ljava/util/Locale;
    :cond_297
    move-object/from16 v27, p4

    .restart local v27    # "lt":Ljava/util/Locale;
    goto :goto_280

    .line 4293
    .restart local v24    # "dfs":Ljava/text/DateFormatSymbols;
    :cond_29a
    invoke-virtual/range {v24 .. v24}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v25

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3d

    .line 4299
    .end local v24    # "dfs":Ljava/text/DateFormatSymbols;
    .end local v25    # "i":I
    .end local v27    # "lt":Ljava/util/Locale;
    :pswitch_2a7
    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v25

    .line 4300
    .restart local v25    # "i":I
    const/4 v15, 0x2

    .line 4301
    .local v15, "size":I
    sparse-switch p3, :sswitch_data_53e

    .line 4312
    :goto_2b3
    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 4313
    .restart local v8    # "flags":Ljava/util/Formatter$Flags;
    move/from16 v0, v25

    int-to-long v12, v0

    const/4 v11, 0x0

    move-object/from16 v10, p0

    move-object v14, v8

    move-object/from16 v16, p4

    invoke-direct/range {v10 .. v16}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_3d

    .line 4303
    .end local v8    # "flags":Ljava/util/Formatter$Flags;
    :sswitch_2c9
    div-int/lit8 v25, v25, 0x64

    goto :goto_2b3

    .line 4306
    :sswitch_2cc
    rem-int/lit8 v25, v25, 0x64

    goto :goto_2b3

    .line 4309
    :sswitch_2cf
    const/4 v15, 0x4

    .line 4310
    goto :goto_2b3

    .line 4318
    .end local v15    # "size":I
    .end local v25    # "i":I
    :pswitch_2d1
    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v25

    .line 4319
    .restart local v25    # "i":I
    const/16 v4, 0x64

    move/from16 v0, p3

    if-ne v0, v4, :cond_2fb

    .line 4320
    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 4322
    .restart local v8    # "flags":Ljava/util/Formatter$Flags;
    :goto_2e1
    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const/16 v17, 0x0

    const/16 v21, 0x2

    move-object/from16 v16, p0

    move-object/from16 v20, v8

    move-object/from16 v22, p4

    invoke-direct/range {v16 .. v22}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_3d

    .line 4321
    .end local v8    # "flags":Ljava/util/Formatter$Flags;
    :cond_2fb
    sget-object v8, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    .restart local v8    # "flags":Ljava/util/Formatter$Flags;
    goto :goto_2e1

    .line 4326
    .end local v8    # "flags":Ljava/util/Formatter$Flags;
    .end local v25    # "i":I
    :pswitch_2fe
    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v25

    .line 4327
    .restart local v25    # "i":I
    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 4328
    .restart local v8    # "flags":Ljava/util/Formatter$Flags;
    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const/16 v17, 0x0

    const/16 v21, 0x3

    move-object/from16 v16, p0

    move-object/from16 v20, v8

    move-object/from16 v22, p4

    invoke-direct/range {v16 .. v22}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_3d

    .line 4332
    .end local v8    # "flags":Ljava/util/Formatter$Flags;
    .end local v25    # "i":I
    :pswitch_322
    sget-object v4, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v25

    .line 4333
    .restart local v25    # "i":I
    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 4334
    .restart local v8    # "flags":Ljava/util/Formatter$Flags;
    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const/16 v17, 0x0

    const/16 v21, 0x2

    move-object/from16 v16, p0

    move-object/from16 v20, v8

    move-object/from16 v22, p4

    invoke-direct/range {v16 .. v22}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_3d

    .line 4341
    .end local v8    # "flags":Ljava/util/Formatter$Flags;
    .end local v25    # "i":I
    :pswitch_346
    const/16 v32, 0x3a

    .line 4342
    .local v32, "sep":C
    const/16 v4, 0x48

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v32

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4343
    const/16 v4, 0x4d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    .line 4344
    const/16 v4, 0x54

    move/from16 v0, p3

    if-ne v0, v4, :cond_3d

    .line 4345
    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4346
    const/16 v4, 0x53

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    goto/16 :goto_3d

    .line 4351
    .end local v32    # "sep":C
    :pswitch_384
    const/16 v32, 0x3a

    .line 4352
    .restart local v32    # "sep":C
    const/16 v4, 0x49

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v32

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4353
    const/16 v4, 0x4d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v32

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4354
    const/16 v4, 0x53

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    const/16 v5, 0x20

    invoke-interface {v4, v5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4356
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    .line 4357
    .local v33, "tsb":Ljava/lang/StringBuilder;
    const/16 v4, 0x70

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    .line 4358
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz p4, :cond_3e4

    .end local p4    # "l":Ljava/util/Locale;
    :goto_3d7
    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3d

    .restart local p4    # "l":Ljava/util/Locale;
    :cond_3e4
    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_3d7

    .line 4362
    .end local v32    # "sep":C
    .end local v33    # "tsb":Ljava/lang/StringBuilder;
    :pswitch_3e7
    const/16 v32, 0x20

    .line 4363
    .restart local v32    # "sep":C
    const/16 v4, 0x61

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v32

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4364
    const/16 v4, 0x62

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v32

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4365
    const/16 v4, 0x64

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v32

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4366
    const/16 v4, 0x54

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v32

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4367
    const/16 v4, 0x5a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v32

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4368
    const/16 v4, 0x59

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    goto/16 :goto_3d

    .line 4372
    .end local v32    # "sep":C
    :pswitch_457
    const/16 v32, 0x2f

    .line 4373
    .restart local v32    # "sep":C
    const/16 v4, 0x6d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v32

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4374
    const/16 v4, 0x64

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v32

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4375
    const/16 v4, 0x79

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    goto/16 :goto_3d

    .line 4379
    .end local v32    # "sep":C
    :pswitch_48e
    const/16 v32, 0x2d

    .line 4380
    .restart local v32    # "sep":C
    const/16 v4, 0x59

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v32

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4381
    const/16 v4, 0x6d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v32

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4382
    const/16 v4, 0x64

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;
    :try_end_4c3
    .catch Ljava/time/DateTimeException; {:try_start_21 .. :try_end_4c3} :catch_14

    goto/16 :goto_3d

    .line 4173
    nop

    :pswitch_data_4c6
    .packed-switch 0x41
        :pswitch_23b
        :pswitch_272
        :pswitch_2a7
        :pswitch_457
        :pswitch_a
        :pswitch_48e
        :pswitch_a
        :pswitch_21
        :pswitch_5b
        :pswitch_a
        :pswitch_a
        :pswitch_d6
        :pswitch_95
        :pswitch_b2
        :pswitch_a
        :pswitch_a
        :pswitch_f4
        :pswitch_346
        :pswitch_17c
        :pswitch_346
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_2a7
        :pswitch_1de
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_23b
        :pswitch_272
        :pswitch_3e7
        :pswitch_2d1
        :pswitch_2d1
        :pswitch_a
        :pswitch_a
        :pswitch_272
        :pswitch_a
        :pswitch_2fe
        :pswitch_3e
        :pswitch_78
        :pswitch_322
        :pswitch_a
        :pswitch_a
        :pswitch_11f
        :pswitch_a
        :pswitch_384
        :pswitch_15e
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_2a7
        :pswitch_19b
    .end packed-switch

    .line 4301
    :sswitch_data_53e
    .sparse-switch
        0x43 -> :sswitch_2c9
        0x59 -> :sswitch_2cf
        0x79 -> :sswitch_2cc
    .end sparse-switch
.end method

.method private print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;
    .registers 39
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "t"    # Ljava/util/Calendar;
    .param p3, "c"    # C
    .param p4, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3953
    if-nez p1, :cond_7

    .line 3954
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1    # "sb":Ljava/lang/StringBuilder;
    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3955
    .restart local p1    # "sb":Ljava/lang/StringBuilder;
    :cond_7
    packed-switch p3, :pswitch_data_440

    .line 4153
    :pswitch_a
    sget-boolean v4, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v4, :cond_52

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 3960
    :pswitch_14
    const/16 v4, 0xb

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v25

    .line 3961
    .local v25, "i":I
    const/16 v4, 0x49

    move/from16 v0, p3

    if-eq v0, v4, :cond_28

    const/16 v4, 0x6c

    move/from16 v0, p3

    if-ne v0, v4, :cond_32

    .line 3962
    :cond_28
    if-eqz v25, :cond_30

    const/16 v4, 0xc

    move/from16 v0, v25

    if-ne v0, v4, :cond_53

    :cond_30
    const/16 v25, 0xc

    .line 3963
    :cond_32
    :goto_32
    const/16 v4, 0x48

    move/from16 v0, p3

    if-eq v0, v4, :cond_3e

    .line 3964
    const/16 v4, 0x49

    move/from16 v0, p3

    if-ne v0, v4, :cond_56

    .line 3965
    :cond_3e
    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 3967
    .local v8, "flags":Ljava/util/Formatter$Flags;
    :goto_40
    move/from16 v0, v25

    int-to-long v6, v0

    const/4 v5, 0x0

    const/4 v9, 0x2

    move-object/from16 v4, p0

    move-object/from16 v10, p4

    invoke-direct/range {v4 .. v10}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4155
    .end local v8    # "flags":Ljava/util/Formatter$Flags;
    .end local v25    # "i":I
    .end local p4    # "l":Ljava/util/Locale;
    :cond_52
    :goto_52
    return-object p1

    .line 3962
    .restart local v25    # "i":I
    .restart local p4    # "l":Ljava/util/Locale;
    :cond_53
    rem-int/lit8 v25, v25, 0xc

    goto :goto_32

    .line 3966
    :cond_56
    sget-object v8, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    .restart local v8    # "flags":Ljava/util/Formatter$Flags;
    goto :goto_40

    .line 3971
    .end local v8    # "flags":Ljava/util/Formatter$Flags;
    .end local v25    # "i":I
    :pswitch_59
    const/16 v4, 0xc

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v25

    .line 3972
    .restart local v25    # "i":I
    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 3973
    .restart local v8    # "flags":Ljava/util/Formatter$Flags;
    move/from16 v0, v25

    int-to-long v6, v0

    const/4 v5, 0x0

    const/4 v9, 0x2

    move-object/from16 v4, p0

    move-object/from16 v10, p4

    invoke-direct/range {v4 .. v10}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_52

    .line 3977
    .end local v8    # "flags":Ljava/util/Formatter$Flags;
    .end local v25    # "i":I
    :pswitch_76
    const/16 v4, 0xe

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const v5, 0xf4240

    mul-int v25, v4, v5

    .line 3978
    .restart local v25    # "i":I
    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 3979
    .restart local v8    # "flags":Ljava/util/Formatter$Flags;
    move/from16 v0, v25

    int-to-long v6, v0

    const/4 v5, 0x0

    const/16 v9, 0x9

    move-object/from16 v4, p0

    move-object/from16 v10, p4

    invoke-direct/range {v4 .. v10}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_52

    .line 3983
    .end local v8    # "flags":Ljava/util/Formatter$Flags;
    .end local v25    # "i":I
    :pswitch_99
    const/16 v4, 0xe

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v25

    .line 3984
    .restart local v25    # "i":I
    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 3985
    .restart local v8    # "flags":Ljava/util/Formatter$Flags;
    move/from16 v0, v25

    int-to-long v6, v0

    const/4 v5, 0x0

    const/4 v9, 0x3

    move-object/from16 v4, p0

    move-object/from16 v10, p4

    invoke-direct/range {v4 .. v10}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_52

    .line 3989
    .end local v8    # "flags":Ljava/util/Formatter$Flags;
    .end local v25    # "i":I
    :pswitch_b6
    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 3990
    .local v6, "i":J
    sget-object v8, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    .line 3991
    .restart local v8    # "flags":Ljava/util/Formatter$Flags;
    move-object/from16 v0, p0

    iget v9, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    const/4 v5, 0x0

    move-object/from16 v4, p0

    move-object/from16 v10, p4

    invoke-direct/range {v4 .. v10}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_52

    .line 3996
    .end local v6    # "i":J
    .end local v8    # "flags":Ljava/util/Formatter$Flags;
    :pswitch_cf
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v23, v0

    const-string/jumbo v4, "AM"

    const/4 v5, 0x0

    aput-object v4, v23, v5

    const-string/jumbo v4, "PM"

    const/4 v5, 0x1

    aput-object v4, v23, v5

    .line 3997
    .local v23, "ampm":[Ljava/lang/String;
    if-eqz p4, :cond_f0

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, p4

    if-eq v0, v4, :cond_f0

    .line 3998
    invoke-static/range {p4 .. p4}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v24

    .line 3999
    .local v24, "dfs":Ljava/text/DateFormatSymbols;
    invoke-virtual/range {v24 .. v24}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v23

    .line 4001
    .end local v24    # "dfs":Ljava/text/DateFormatSymbols;
    :cond_f0
    const/16 v4, 0x9

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    aget-object v30, v23, v4

    .line 4002
    .local v30, "s":Ljava/lang/String;
    if-eqz p4, :cond_10b

    .end local p4    # "l":Ljava/util/Locale;
    :goto_fc
    move-object/from16 v0, v30

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_52

    .restart local p4    # "l":Ljava/util/Locale;
    :cond_10b
    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_fc

    .line 4006
    .end local v23    # "ampm":[Ljava/lang/String;
    .end local v30    # "s":Ljava/lang/String;
    :pswitch_10e
    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/16 v10, 0x3e8

    div-long v6, v4, v10

    .line 4007
    .restart local v6    # "i":J
    sget-object v8, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    .line 4008
    .restart local v8    # "flags":Ljava/util/Formatter$Flags;
    move-object/from16 v0, p0

    iget v9, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    const/4 v5, 0x0

    move-object/from16 v4, p0

    move-object/from16 v10, p4

    invoke-direct/range {v4 .. v10}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_52

    .line 4012
    .end local v6    # "i":J
    .end local v8    # "flags":Ljava/util/Formatter$Flags;
    :pswitch_12c
    const/16 v4, 0xd

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v25

    .line 4013
    .restart local v25    # "i":I
    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 4014
    .restart local v8    # "flags":Ljava/util/Formatter$Flags;
    move/from16 v0, v25

    int-to-long v12, v0

    const/4 v11, 0x0

    const/4 v15, 0x2

    move-object/from16 v10, p0

    move-object v14, v8

    move-object/from16 v16, p4

    invoke-direct/range {v10 .. v16}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_52

    .line 4018
    .end local v8    # "flags":Ljava/util/Formatter$Flags;
    .end local v25    # "i":I
    :pswitch_14b
    const/16 v4, 0xf

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0x10

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int v25, v4, v5

    .line 4019
    .restart local v25    # "i":I
    if-gez v25, :cond_195

    const/16 v28, 0x1

    .line 4020
    .local v28, "neg":Z
    :goto_161
    if-eqz v28, :cond_198

    const/16 v4, 0x2d

    :goto_165
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4021
    if-eqz v28, :cond_171

    .line 4022
    move/from16 v0, v25

    neg-int v0, v0

    move/from16 v25, v0

    .line 4023
    :cond_171
    const v4, 0xea60

    div-int v27, v25, v4

    .line 4025
    .local v27, "min":I
    div-int/lit8 v4, v27, 0x3c

    mul-int/lit8 v4, v4, 0x64

    rem-int/lit8 v5, v27, 0x3c

    add-int v29, v4, v5

    .line 4026
    .local v29, "offset":I
    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 4028
    .restart local v8    # "flags":Ljava/util/Formatter$Flags;
    move/from16 v0, v29

    int-to-long v12, v0

    const/4 v11, 0x0

    const/4 v15, 0x4

    move-object/from16 v10, p0

    move-object v14, v8

    move-object/from16 v16, p4

    invoke-direct/range {v10 .. v16}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_52

    .line 4019
    .end local v8    # "flags":Ljava/util/Formatter$Flags;
    .end local v27    # "min":I
    .end local v28    # "neg":Z
    .end local v29    # "offset":I
    :cond_195
    const/16 v28, 0x0

    .restart local v28    # "neg":Z
    goto :goto_161

    .line 4020
    :cond_198
    const/16 v4, 0x2b

    goto :goto_165

    .line 4032
    .end local v25    # "i":I
    .end local v28    # "neg":Z
    :pswitch_19b
    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v33

    .line 4033
    .local v33, "tz":Ljava/util/TimeZone;
    const/16 v4, 0x10

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eqz v4, :cond_1be

    const/4 v4, 0x1

    .line 4035
    :goto_1aa
    if-nez p4, :cond_1ae

    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 4034
    .end local p4    # "l":Ljava/util/Locale;
    :cond_1ae
    const/4 v5, 0x0

    .line 4033
    move-object/from16 v0, v33

    move-object/from16 v1, p4

    invoke-virtual {v0, v4, v5, v1}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_52

    .restart local p4    # "l":Ljava/util/Locale;
    :cond_1be
    const/4 v4, 0x0

    goto :goto_1aa

    .line 4042
    .end local v33    # "tz":Ljava/util/TimeZone;
    :pswitch_1c0
    const/4 v4, 0x7

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v25

    .line 4043
    .restart local v25    # "i":I
    if-nez p4, :cond_1e2

    sget-object v26, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 4044
    .local v26, "lt":Ljava/util/Locale;
    :goto_1cb
    invoke-static/range {v26 .. v26}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v24

    .line 4045
    .restart local v24    # "dfs":Ljava/text/DateFormatSymbols;
    const/16 v4, 0x41

    move/from16 v0, p3

    if-ne v0, v4, :cond_1e5

    .line 4046
    invoke-virtual/range {v24 .. v24}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v25

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_52

    .line 4043
    .end local v24    # "dfs":Ljava/text/DateFormatSymbols;
    .end local v26    # "lt":Ljava/util/Locale;
    :cond_1e2
    move-object/from16 v26, p4

    .restart local v26    # "lt":Ljava/util/Locale;
    goto :goto_1cb

    .line 4048
    .restart local v24    # "dfs":Ljava/text/DateFormatSymbols;
    :cond_1e5
    invoke-virtual/range {v24 .. v24}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v25

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_52

    .line 4054
    .end local v24    # "dfs":Ljava/text/DateFormatSymbols;
    .end local v25    # "i":I
    .end local v26    # "lt":Ljava/util/Locale;
    :pswitch_1f2
    const/4 v4, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v25

    .line 4055
    .restart local v25    # "i":I
    if-nez p4, :cond_214

    sget-object v26, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 4056
    .restart local v26    # "lt":Ljava/util/Locale;
    :goto_1fd
    invoke-static/range {v26 .. v26}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v24

    .line 4057
    .restart local v24    # "dfs":Ljava/text/DateFormatSymbols;
    const/16 v4, 0x42

    move/from16 v0, p3

    if-ne v0, v4, :cond_217

    .line 4058
    invoke-virtual/range {v24 .. v24}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v25

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_52

    .line 4055
    .end local v24    # "dfs":Ljava/text/DateFormatSymbols;
    .end local v26    # "lt":Ljava/util/Locale;
    :cond_214
    move-object/from16 v26, p4

    .restart local v26    # "lt":Ljava/util/Locale;
    goto :goto_1fd

    .line 4060
    .restart local v24    # "dfs":Ljava/text/DateFormatSymbols;
    :cond_217
    invoke-virtual/range {v24 .. v24}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v25

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_52

    .line 4066
    .end local v24    # "dfs":Ljava/text/DateFormatSymbols;
    .end local v25    # "i":I
    .end local v26    # "lt":Ljava/util/Locale;
    :pswitch_224
    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v25

    .line 4067
    .restart local v25    # "i":I
    const/4 v15, 0x2

    .line 4068
    .local v15, "size":I
    sparse-switch p3, :sswitch_data_4b8

    .line 4079
    :goto_22f
    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 4080
    .restart local v8    # "flags":Ljava/util/Formatter$Flags;
    move/from16 v0, v25

    int-to-long v12, v0

    const/4 v11, 0x0

    move-object/from16 v10, p0

    move-object v14, v8

    move-object/from16 v16, p4

    invoke-direct/range {v10 .. v16}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_52

    .line 4070
    .end local v8    # "flags":Ljava/util/Formatter$Flags;
    :sswitch_245
    div-int/lit8 v25, v25, 0x64

    goto :goto_22f

    .line 4073
    :sswitch_248
    rem-int/lit8 v25, v25, 0x64

    goto :goto_22f

    .line 4076
    :sswitch_24b
    const/4 v15, 0x4

    .line 4077
    goto :goto_22f

    .line 4085
    .end local v15    # "size":I
    .end local v25    # "i":I
    :pswitch_24d
    const/4 v4, 0x5

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v25

    .line 4086
    .restart local v25    # "i":I
    const/16 v4, 0x64

    move/from16 v0, p3

    if-ne v0, v4, :cond_276

    .line 4087
    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 4089
    .restart local v8    # "flags":Ljava/util/Formatter$Flags;
    :goto_25c
    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const/16 v17, 0x0

    const/16 v21, 0x2

    move-object/from16 v16, p0

    move-object/from16 v20, v8

    move-object/from16 v22, p4

    invoke-direct/range {v16 .. v22}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_52

    .line 4088
    .end local v8    # "flags":Ljava/util/Formatter$Flags;
    :cond_276
    sget-object v8, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    .restart local v8    # "flags":Ljava/util/Formatter$Flags;
    goto :goto_25c

    .line 4093
    .end local v8    # "flags":Ljava/util/Formatter$Flags;
    .end local v25    # "i":I
    :pswitch_279
    const/4 v4, 0x6

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v25

    .line 4094
    .restart local v25    # "i":I
    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 4095
    .restart local v8    # "flags":Ljava/util/Formatter$Flags;
    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const/16 v17, 0x0

    const/16 v21, 0x3

    move-object/from16 v16, p0

    move-object/from16 v20, v8

    move-object/from16 v22, p4

    invoke-direct/range {v16 .. v22}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_52

    .line 4099
    .end local v8    # "flags":Ljava/util/Formatter$Flags;
    .end local v25    # "i":I
    :pswitch_29c
    const/4 v4, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v25, v4, 0x1

    .line 4100
    .restart local v25    # "i":I
    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 4101
    .restart local v8    # "flags":Ljava/util/Formatter$Flags;
    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const/16 v17, 0x0

    const/16 v21, 0x2

    move-object/from16 v16, p0

    move-object/from16 v20, v8

    move-object/from16 v22, p4

    invoke-direct/range {v16 .. v22}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_52

    .line 4108
    .end local v8    # "flags":Ljava/util/Formatter$Flags;
    .end local v25    # "i":I
    :pswitch_2c1
    const/16 v31, 0x3a

    .line 4109
    .local v31, "sep":C
    const/16 v4, 0x48

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v31

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4110
    const/16 v4, 0x4d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    .line 4111
    const/16 v4, 0x54

    move/from16 v0, p3

    if-ne v0, v4, :cond_52

    .line 4112
    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4113
    const/16 v4, 0x53

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    goto/16 :goto_52

    .line 4118
    .end local v31    # "sep":C
    :pswitch_2ff
    const/16 v31, 0x3a

    .line 4119
    .restart local v31    # "sep":C
    const/16 v4, 0x49

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v31

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4120
    const/16 v4, 0x4d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v31

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4121
    const/16 v4, 0x53

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    const/16 v5, 0x20

    invoke-interface {v4, v5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4123
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    .line 4124
    .local v32, "tsb":Ljava/lang/StringBuilder;
    const/16 v4, 0x70

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    .line 4125
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz p4, :cond_35f

    .end local p4    # "l":Ljava/util/Locale;
    :goto_352
    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_52

    .restart local p4    # "l":Ljava/util/Locale;
    :cond_35f
    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_352

    .line 4129
    .end local v31    # "sep":C
    .end local v32    # "tsb":Ljava/lang/StringBuilder;
    :pswitch_362
    const/16 v31, 0x20

    .line 4130
    .restart local v31    # "sep":C
    const/16 v4, 0x61

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v31

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4131
    const/16 v4, 0x62

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v31

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4132
    const/16 v4, 0x64

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v31

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4133
    const/16 v4, 0x54

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v31

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4134
    const/16 v4, 0x5a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v31

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4135
    const/16 v4, 0x59

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    goto/16 :goto_52

    .line 4139
    .end local v31    # "sep":C
    :pswitch_3d2
    const/16 v31, 0x2f

    .line 4140
    .restart local v31    # "sep":C
    const/16 v4, 0x6d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v31

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4141
    const/16 v4, 0x64

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v31

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4142
    const/16 v4, 0x79

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    goto/16 :goto_52

    .line 4146
    .end local v31    # "sep":C
    :pswitch_409
    const/16 v31, 0x2d

    .line 4147
    .restart local v31    # "sep":C
    const/16 v4, 0x59

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v31

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4148
    const/16 v4, 0x6d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    move/from16 v0, v31

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4149
    const/16 v4, 0x64

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    goto/16 :goto_52

    .line 3955
    :pswitch_data_440
    .packed-switch 0x41
        :pswitch_1c0
        :pswitch_1f2
        :pswitch_224
        :pswitch_3d2
        :pswitch_a
        :pswitch_409
        :pswitch_a
        :pswitch_14
        :pswitch_14
        :pswitch_a
        :pswitch_a
        :pswitch_99
        :pswitch_59
        :pswitch_76
        :pswitch_a
        :pswitch_a
        :pswitch_b6
        :pswitch_2c1
        :pswitch_12c
        :pswitch_2c1
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_224
        :pswitch_19b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_1c0
        :pswitch_1f2
        :pswitch_362
        :pswitch_24d
        :pswitch_24d
        :pswitch_a
        :pswitch_a
        :pswitch_1f2
        :pswitch_a
        :pswitch_279
        :pswitch_14
        :pswitch_14
        :pswitch_29c
        :pswitch_a
        :pswitch_a
        :pswitch_cf
        :pswitch_a
        :pswitch_2ff
        :pswitch_10e
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_224
        :pswitch_14b
    .end packed-switch

    .line 4068
    :sswitch_data_4b8
    .sparse-switch
        0x43 -> :sswitch_245
        0x59 -> :sswitch_24b
        0x79 -> :sswitch_248
    .end sparse-switch
.end method

.method private print(BLjava/util/Locale;)V
    .registers 7
    .param p1, "value"    # B
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3148
    int-to-long v0, p1

    .line 3149
    .local v0, "v":J
    if-gez p1, :cond_26

    .line 3150
    iget-char v2, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v3, 0x6f

    if-eq v2, v3, :cond_f

    .line 3151
    iget-char v2, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v3, 0x78

    if-ne v2, v3, :cond_26

    .line 3152
    :cond_f
    const-wide/16 v2, 0x100

    add-long/2addr v0, v2

    .line 3153
    sget-boolean v2, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v2, :cond_26

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_26

    new-instance v2, Ljava/lang/AssertionError;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 3155
    :cond_26
    invoke-direct {p0, v0, v1, p2}, Ljava/util/Formatter$FormatSpecifier;->print(JLjava/util/Locale;)V

    .line 3156
    return-void
.end method

.method private print(DLjava/util/Locale;)V
    .registers 13
    .param p1, "value"    # D
    .param p3, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3322
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-wide/16 v4, 0x0

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_42

    const/4 v8, 0x1

    .line 3324
    .local v8, "neg":Z
    :goto_f
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_59

    .line 3325
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 3328
    .local v2, "v":D
    invoke-direct {p0, v1, v8}, Ljava/util/Formatter$FormatSpecifier;->leadingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 3331
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_44

    .line 3332
    iget-object v5, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    iget-char v6, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    iget v7, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    move-object v0, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v8}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;DLjava/util/Locale;Ljava/util/Formatter$Flags;CIZ)V

    .line 3338
    :goto_2d
    invoke-direct {p0, v1, v8}, Ljava/util/Formatter$FormatSpecifier;->trailingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 3344
    .end local v2    # "v":D
    :goto_30
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-static {v0}, Ljava/util/Formatter;->-get0(Ljava/util/Formatter;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Ljava/util/Formatter$FormatSpecifier;->justify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 3345
    return-void

    .line 3322
    .end local v8    # "neg":Z
    :cond_42
    const/4 v8, 0x0

    .restart local v8    # "neg":Z
    goto :goto_f

    .line 3334
    .restart local v2    # "v":D
    :cond_44
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v4, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 3335
    const-string/jumbo v0, "INFINITY"

    .line 3334
    :goto_51
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2d

    .line 3335
    :cond_55
    const-string/jumbo v0, "Infinity"

    goto :goto_51

    .line 3340
    .end local v2    # "v":D
    :cond_59
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v4, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_6a

    const-string/jumbo v0, "NAN"

    :goto_66
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_30

    :cond_6a
    const-string/jumbo v0, "NaN"

    goto :goto_66
.end method

.method private print(FLjava/util/Locale;)V
    .registers 5
    .param p1, "value"    # F
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3317
    float-to-double v0, p1

    invoke-direct {p0, v0, v1, p2}, Ljava/util/Formatter$FormatSpecifier;->print(DLjava/util/Locale;)V

    .line 3318
    return-void
.end method

.method private print(ILjava/util/Locale;)V
    .registers 7
    .param p1, "value"    # I
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3170
    int-to-long v0, p1

    .line 3171
    .local v0, "v":J
    if-gez p1, :cond_29

    .line 3172
    iget-char v2, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v3, 0x6f

    if-eq v2, v3, :cond_f

    .line 3173
    iget-char v2, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v3, 0x78

    if-ne v2, v3, :cond_29

    .line 3174
    :cond_f
    const-wide v2, 0x100000000L

    add-long/2addr v0, v2

    .line 3175
    sget-boolean v2, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v2, :cond_29

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_29

    new-instance v2, Ljava/lang/AssertionError;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 3177
    :cond_29
    invoke-direct {p0, v0, v1, p2}, Ljava/util/Formatter$FormatSpecifier;->print(JLjava/util/Locale;)V

    .line 3178
    return-void
.end method

.method private print(JLjava/util/Locale;)V
    .registers 15
    .param p1, "value"    # J
    .param p3, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3184
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v3, 0x64

    if-ne v0, v3, :cond_5b

    .line 3185
    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-gez v0, :cond_4e

    const/4 v8, 0x1

    .line 3187
    .local v8, "neg":Z
    :goto_12
    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-gez v0, :cond_50

    .line 3188
    const/16 v0, 0xa

    invoke-static {p1, p2, v0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 3193
    .local v2, "va":[C
    :goto_27
    invoke-direct {p0, v1, v8}, Ljava/util/Formatter$FormatSpecifier;->leadingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 3196
    iget-object v3, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    iget-object v4, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    invoke-direct {p0, v0, v4, v8}, Ljava/util/Formatter$FormatSpecifier;->adjustWidth(ILjava/util/Formatter$Flags;Z)I

    move-result v4

    move-object v0, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    .line 3199
    invoke-direct {p0, v1, v8}, Ljava/util/Formatter$FormatSpecifier;->trailingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 3233
    .end local v2    # "va":[C
    .end local v8    # "neg":Z
    :cond_3c
    :goto_3c
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-static {v0}, Ljava/util/Formatter;->-get0(Ljava/util/Formatter;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Ljava/util/Formatter$FormatSpecifier;->justify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 3234
    return-void

    .line 3185
    :cond_4e
    const/4 v8, 0x0

    .restart local v8    # "neg":Z
    goto :goto_12

    .line 3190
    :cond_50
    const/16 v0, 0xa

    invoke-static {p1, p2, v0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .restart local v2    # "va":[C
    goto :goto_27

    .line 3200
    .end local v2    # "va":[C
    .end local v8    # "neg":Z
    :cond_5b
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v3, 0x6f

    if-ne v0, v3, :cond_ba

    .line 3201
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    sget-object v3, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    const/4 v4, 0x1

    aput-object v3, v0, v4

    .line 3202
    sget-object v3, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    const/4 v4, 0x2

    aput-object v3, v0, v4

    .line 3201
    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    .line 3203
    invoke-static {p1, p2}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v9

    .line 3204
    .local v9, "s":Ljava/lang/String;
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 3205
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v7, v0, 0x1

    .line 3209
    .local v7, "len":I
    :goto_8a
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 3210
    const/16 v0, 0x30

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3211
    :cond_99
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 3212
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_a4
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    sub-int/2addr v0, v7

    if-ge v6, v0, :cond_b6

    const/16 v0, 0x30

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_a4

    .line 3206
    .end local v6    # "i":I
    .end local v7    # "len":I
    :cond_b1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v7

    .restart local v7    # "len":I
    goto :goto_8a

    .line 3213
    :cond_b6
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3c

    .line 3214
    .end local v7    # "len":I
    .end local v9    # "s":Ljava/lang/String;
    :cond_ba
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v3, 0x78

    if-ne v0, v3, :cond_3c

    .line 3215
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    sget-object v3, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    const/4 v4, 0x1

    aput-object v3, v0, v4

    .line 3216
    sget-object v3, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    const/4 v4, 0x2

    aput-object v3, v0, v4

    .line 3215
    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    .line 3217
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v9

    .line 3218
    .restart local v9    # "s":Ljava/lang/String;
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_11b

    .line 3219
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v7, v0, 0x2

    .line 3223
    .restart local v7    # "len":I
    :goto_e9
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_103

    .line 3224
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_120

    const-string/jumbo v0, "0X"

    :goto_100
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3225
    :cond_103
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_124

    .line 3226
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_10e
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    sub-int/2addr v0, v7

    if-ge v6, v0, :cond_124

    const/16 v0, 0x30

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_10e

    .line 3220
    .end local v6    # "i":I
    .end local v7    # "len":I
    :cond_11b
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v7

    .restart local v7    # "len":I
    goto :goto_e9

    .line 3224
    :cond_120
    const-string/jumbo v0, "0x"

    goto :goto_100

    .line 3227
    :cond_124
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_132

    .line 3228
    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    .line 3229
    :cond_132
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3c
.end method

.method private print(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3000
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 3001
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 3002
    :cond_14
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 3005
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-static {v0}, Ljava/util/Formatter;->-get1(Ljava/util/Formatter;)Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-static {v0}, Ljava/util/Formatter;->-get1(Ljava/util/Formatter;)Ljava/util/Locale;

    move-result-object v0

    :goto_2c
    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 3007
    :cond_30
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-static {v0}, Ljava/util/Formatter;->-get0(Ljava/util/Formatter;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-direct {p0, p1}, Ljava/util/Formatter$FormatSpecifier;->justify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 3008
    return-void

    .line 3005
    :cond_3e
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_2c
.end method

.method private print(Ljava/lang/StringBuilder;DLjava/util/Locale;Ljava/util/Formatter$Flags;CIZ)V
    .registers 37
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

    .prologue
    .line 3352
    const/16 v4, 0x65

    move/from16 v0, p6

    if-ne v0, v4, :cond_ea

    .line 3355
    const/4 v4, -0x1

    move/from16 v0, p7

    if-ne v0, v4, :cond_ad

    const/16 v21, 0x6

    .line 3359
    .local v21, "prec":I
    :goto_d
    sget-object v4, Lsun/misc/FormattedFloatingDecimal$Form;->SCIENTIFIC:Lsun/misc/FormattedFloatingDecimal$Form;

    .line 3358
    move-wide/from16 v0, p2

    move/from16 v2, v21

    invoke-static {v0, v1, v2, v4}, Lsun/misc/FormattedFloatingDecimal;->valueOf(DILsun/misc/FormattedFloatingDecimal$Form;)Lsun/misc/FormattedFloatingDecimal;

    move-result-object v17

    .line 3361
    .local v17, "fd":Lsun/misc/FormattedFloatingDecimal;
    invoke-virtual/range {v17 .. v17}, Lsun/misc/FormattedFloatingDecimal;->getMantissa()[C

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v4, v1}, Ljava/util/Formatter$FormatSpecifier;->addZeros([CI)[C

    move-result-object v6

    .line 3365
    .local v6, "mant":[C
    sget-object v4, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v4

    if-eqz v4, :cond_35

    if-nez v21, :cond_35

    .line 3366
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Ljava/util/Formatter$FormatSpecifier;->addDot([C)[C

    move-result-object v6

    .line 3368
    :cond_35
    const-wide/16 v4, 0x0

    cmpl-double v4, p2, v4

    if-nez v4, :cond_b1

    .line 3369
    const/4 v4, 0x3

    new-array v15, v4, [C

    .local v15, "exp":[C
    fill-array-data v15, :array_2f4

    .line 3371
    :goto_41
    move-object/from16 v0, p0

    iget v8, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    .line 3372
    .local v8, "newW":I
    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5e

    .line 3373
    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    array-length v5, v15

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p8

    invoke-direct {v0, v4, v1, v2}, Ljava/util/Formatter$FormatSpecifier;->adjustWidth(ILjava/util/Formatter$Flags;Z)I

    move-result v8

    :cond_5e
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p5

    move-object/from16 v9, p4

    .line 3374
    invoke-direct/range {v4 .. v9}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    .line 3377
    if-eqz p4, :cond_b6

    move-object/from16 v23, p4

    .line 3378
    .local v23, "separatorLocale":Ljava/util/Locale;
    :goto_6d
    invoke-static/range {v23 .. v23}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v20

    .line 3379
    .local v20, "localeData":Llibcore/icu/LocaleData;
    sget-object v4, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v4

    if-eqz v4, :cond_bb

    .line 3380
    move-object/from16 v0, v20

    iget-object v4, v0, Llibcore/icu/LocaleData;->exponentSeparator:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 3379
    :goto_85
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3384
    invoke-virtual/range {p5 .. p5}, Ljava/util/Formatter$Flags;->dup()Ljava/util/Formatter$Flags;

    move-result-object v4

    sget-object v5, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    invoke-virtual {v4, v5}, Ljava/util/Formatter$Flags;->remove(Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;

    move-result-object v12

    .line 3385
    .local v12, "flags":Ljava/util/Formatter$Flags;
    const/4 v4, 0x0

    aget-char v24, v15, v4

    .line 3386
    .local v24, "sign":C
    sget-boolean v4, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v4, :cond_c6

    const/16 v4, 0x2b

    move/from16 v0, v24

    if-eq v0, v4, :cond_c6

    const/16 v4, 0x2d

    move/from16 v0, v24

    if-eq v0, v4, :cond_c6

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 3355
    .end local v6    # "mant":[C
    .end local v8    # "newW":I
    .end local v12    # "flags":Ljava/util/Formatter$Flags;
    .end local v15    # "exp":[C
    .end local v17    # "fd":Lsun/misc/FormattedFloatingDecimal;
    .end local v20    # "localeData":Llibcore/icu/LocaleData;
    .end local v21    # "prec":I
    .end local v23    # "separatorLocale":Ljava/util/Locale;
    .end local v24    # "sign":C
    :cond_ad
    move/from16 v21, p7

    .restart local v21    # "prec":I
    goto/16 :goto_d

    .line 3369
    .restart local v6    # "mant":[C
    .restart local v17    # "fd":Lsun/misc/FormattedFloatingDecimal;
    :cond_b1
    invoke-virtual/range {v17 .. v17}, Lsun/misc/FormattedFloatingDecimal;->getExponent()[C

    move-result-object v15

    .restart local v15    # "exp":[C
    goto :goto_41

    .line 3377
    .restart local v8    # "newW":I
    :cond_b6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v23

    .restart local v23    # "separatorLocale":Ljava/util/Locale;
    goto :goto_6d

    .line 3381
    .restart local v20    # "localeData":Llibcore/icu/LocaleData;
    :cond_bb
    move-object/from16 v0, v20

    iget-object v4, v0, Llibcore/icu/LocaleData;->exponentSeparator:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    goto :goto_85

    .line 3387
    .restart local v12    # "flags":Ljava/util/Formatter$Flags;
    .restart local v24    # "sign":C
    :cond_c6
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3389
    array-length v4, v15

    add-int/lit8 v4, v4, -0x1

    new-array v11, v4, [C

    .line 3390
    .local v11, "tmp":[C
    array-length v4, v15

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-static {v15, v5, v11, v7, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 3391
    const/4 v10, 0x0

    const/4 v13, -0x1

    move-object/from16 v9, p0

    move-object/from16 v14, p4

    invoke-direct/range {v9 .. v14}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3498
    .end local v6    # "mant":[C
    .end local v8    # "newW":I
    .end local v11    # "tmp":[C
    .end local v12    # "flags":Ljava/util/Formatter$Flags;
    .end local v15    # "exp":[C
    .end local v17    # "fd":Lsun/misc/FormattedFloatingDecimal;
    .end local v20    # "localeData":Llibcore/icu/LocaleData;
    .end local v21    # "prec":I
    .end local v23    # "separatorLocale":Ljava/util/Locale;
    .end local v24    # "sign":C
    :cond_e9
    :goto_e9
    return-void

    .line 3392
    :cond_ea
    const/16 v4, 0x66

    move/from16 v0, p6

    if-ne v0, v4, :cond_147

    .line 3395
    const/4 v4, -0x1

    move/from16 v0, p7

    if-ne v0, v4, :cond_144

    const/16 v21, 0x6

    .line 3399
    .restart local v21    # "prec":I
    :goto_f7
    sget-object v4, Lsun/misc/FormattedFloatingDecimal$Form;->DECIMAL_FLOAT:Lsun/misc/FormattedFloatingDecimal$Form;

    .line 3398
    move-wide/from16 v0, p2

    move/from16 v2, v21

    invoke-static {v0, v1, v2, v4}, Lsun/misc/FormattedFloatingDecimal;->valueOf(DILsun/misc/FormattedFloatingDecimal$Form;)Lsun/misc/FormattedFloatingDecimal;

    move-result-object v17

    .line 3401
    .restart local v17    # "fd":Lsun/misc/FormattedFloatingDecimal;
    invoke-virtual/range {v17 .. v17}, Lsun/misc/FormattedFloatingDecimal;->getMantissa()[C

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v4, v1}, Ljava/util/Formatter$FormatSpecifier;->addZeros([CI)[C

    move-result-object v6

    .line 3405
    .restart local v6    # "mant":[C
    sget-object v4, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v4

    if-eqz v4, :cond_11f

    if-nez v21, :cond_11f

    .line 3406
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Ljava/util/Formatter$FormatSpecifier;->addDot([C)[C

    move-result-object v6

    .line 3408
    :cond_11f
    move-object/from16 v0, p0

    iget v8, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    .line 3409
    .restart local v8    # "newW":I
    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_138

    .line 3410
    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p8

    invoke-direct {v0, v4, v1, v2}, Ljava/util/Formatter$FormatSpecifier;->adjustWidth(ILjava/util/Formatter$Flags;Z)I

    move-result v8

    :cond_138
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p5

    move-object/from16 v9, p4

    .line 3411
    invoke-direct/range {v4 .. v9}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    goto :goto_e9

    .line 3395
    .end local v6    # "mant":[C
    .end local v8    # "newW":I
    .end local v17    # "fd":Lsun/misc/FormattedFloatingDecimal;
    .end local v21    # "prec":I
    :cond_144
    move/from16 v21, p7

    .restart local v21    # "prec":I
    goto :goto_f7

    .line 3412
    .end local v21    # "prec":I
    :cond_147
    const/16 v4, 0x67

    move/from16 v0, p6

    if-ne v0, v4, :cond_240

    .line 3413
    move/from16 v21, p7

    .line 3414
    .restart local v21    # "prec":I
    const/4 v4, -0x1

    move/from16 v0, p7

    if-ne v0, v4, :cond_1e5

    .line 3415
    const/16 v21, 0x6

    .line 3422
    :cond_156
    :goto_156
    const-wide/16 v4, 0x0

    cmpl-double v4, p2, v4

    if-nez v4, :cond_1eb

    .line 3423
    const/4 v15, 0x0

    .line 3424
    .local v15, "exp":[C
    const/4 v4, 0x1

    new-array v6, v4, [C

    const/16 v4, 0x30

    const/4 v5, 0x0

    aput-char v4, v6, v5

    .line 3425
    .restart local v6    # "mant":[C
    const/16 v16, 0x0

    .line 3435
    .end local v15    # "exp":[C
    .local v16, "expRounded":I
    :goto_167
    if-eqz v15, :cond_203

    .line 3436
    add-int/lit8 v21, v21, -0x1

    .line 3441
    :goto_16b
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v6, v1}, Ljava/util/Formatter$FormatSpecifier;->addZeros([CI)[C

    move-result-object v6

    .line 3444
    sget-object v4, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v4

    if-eqz v4, :cond_185

    if-nez v21, :cond_185

    .line 3445
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Ljava/util/Formatter$FormatSpecifier;->addDot([C)[C

    move-result-object v6

    .line 3447
    :cond_185
    move-object/from16 v0, p0

    iget v8, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    .line 3448
    .restart local v8    # "newW":I
    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1a4

    .line 3449
    if-eqz v15, :cond_209

    .line 3450
    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    array-length v5, v15

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p8

    invoke-direct {v0, v4, v1, v2}, Ljava/util/Formatter$FormatSpecifier;->adjustWidth(ILjava/util/Formatter$Flags;Z)I

    move-result v8

    :cond_1a4
    :goto_1a4
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p5

    move-object/from16 v9, p4

    .line 3454
    invoke-direct/range {v4 .. v9}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    .line 3456
    if-eqz v15, :cond_e9

    .line 3457
    sget-object v4, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v4

    if-eqz v4, :cond_218

    const/16 v4, 0x45

    :goto_1bd
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3459
    invoke-virtual/range {p5 .. p5}, Ljava/util/Formatter$Flags;->dup()Ljava/util/Formatter$Flags;

    move-result-object v4

    sget-object v5, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    invoke-virtual {v4, v5}, Ljava/util/Formatter$Flags;->remove(Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;

    move-result-object v12

    .line 3460
    .restart local v12    # "flags":Ljava/util/Formatter$Flags;
    const/4 v4, 0x0

    aget-char v24, v15, v4

    .line 3461
    .restart local v24    # "sign":C
    sget-boolean v4, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v4, :cond_21b

    const/16 v4, 0x2b

    move/from16 v0, v24

    if-eq v0, v4, :cond_21b

    const/16 v4, 0x2d

    move/from16 v0, v24

    if-eq v0, v4, :cond_21b

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 3416
    .end local v6    # "mant":[C
    .end local v8    # "newW":I
    .end local v12    # "flags":Ljava/util/Formatter$Flags;
    .end local v16    # "expRounded":I
    .end local v24    # "sign":C
    :cond_1e5
    if-nez p7, :cond_156

    .line 3417
    const/16 v21, 0x1

    goto/16 :goto_156

    .line 3429
    :cond_1eb
    sget-object v4, Lsun/misc/FormattedFloatingDecimal$Form;->GENERAL:Lsun/misc/FormattedFloatingDecimal$Form;

    .line 3428
    move-wide/from16 v0, p2

    move/from16 v2, v21

    invoke-static {v0, v1, v2, v4}, Lsun/misc/FormattedFloatingDecimal;->valueOf(DILsun/misc/FormattedFloatingDecimal$Form;)Lsun/misc/FormattedFloatingDecimal;

    move-result-object v17

    .line 3430
    .restart local v17    # "fd":Lsun/misc/FormattedFloatingDecimal;
    invoke-virtual/range {v17 .. v17}, Lsun/misc/FormattedFloatingDecimal;->getExponent()[C

    move-result-object v15

    .line 3431
    .local v15, "exp":[C
    invoke-virtual/range {v17 .. v17}, Lsun/misc/FormattedFloatingDecimal;->getMantissa()[C

    move-result-object v6

    .line 3432
    .restart local v6    # "mant":[C
    invoke-virtual/range {v17 .. v17}, Lsun/misc/FormattedFloatingDecimal;->getExponentRounded()I

    move-result v16

    .restart local v16    # "expRounded":I
    goto/16 :goto_167

    .line 3438
    .end local v15    # "exp":[C
    .end local v17    # "fd":Lsun/misc/FormattedFloatingDecimal;
    :cond_203
    add-int/lit8 v4, v16, 0x1

    sub-int v21, v21, v4

    goto/16 :goto_16b

    .line 3452
    .restart local v8    # "newW":I
    :cond_209
    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p8

    invoke-direct {v0, v4, v1, v2}, Ljava/util/Formatter$FormatSpecifier;->adjustWidth(ILjava/util/Formatter$Flags;Z)I

    move-result v8

    goto :goto_1a4

    .line 3457
    :cond_218
    const/16 v4, 0x65

    goto :goto_1bd

    .line 3462
    .restart local v12    # "flags":Ljava/util/Formatter$Flags;
    .restart local v24    # "sign":C
    :cond_21b
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3464
    array-length v4, v15

    add-int/lit8 v4, v4, -0x1

    new-array v11, v4, [C

    .line 3465
    .restart local v11    # "tmp":[C
    array-length v4, v15

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-static {v15, v5, v11, v7, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 3466
    const/4 v10, 0x0

    const/4 v13, -0x1

    move-object/from16 v9, p0

    move-object/from16 v14, p4

    invoke-direct/range {v9 .. v14}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_e9

    .line 3468
    .end local v6    # "mant":[C
    .end local v8    # "newW":I
    .end local v11    # "tmp":[C
    .end local v12    # "flags":Ljava/util/Formatter$Flags;
    .end local v16    # "expRounded":I
    .end local v21    # "prec":I
    .end local v24    # "sign":C
    :cond_240
    const/16 v4, 0x61

    move/from16 v0, p6

    if-ne v0, v4, :cond_e9

    .line 3469
    move/from16 v21, p7

    .line 3470
    .restart local v21    # "prec":I
    const/4 v4, -0x1

    move/from16 v0, p7

    if-ne v0, v4, :cond_290

    .line 3472
    const/16 v21, 0x0

    .line 3476
    :cond_24f
    :goto_24f
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Ljava/util/Formatter$FormatSpecifier;->hexDouble(DI)Ljava/lang/String;

    move-result-object v22

    .line 3479
    .local v22, "s":Ljava/lang/String;
    sget-object v4, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v26

    .line 3480
    .local v26, "upper":Z
    if-eqz v26, :cond_295

    const-string/jumbo v4, "0X"

    :goto_266
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3482
    sget-object v4, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v4

    if-eqz v4, :cond_299

    .line 3483
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_277
    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x2

    move/from16 v0, v18

    if-ge v0, v4, :cond_299

    .line 3484
    const/16 v4, 0x30

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3483
    add-int/lit8 v18, v18, 0x1

    goto :goto_277

    .line 3473
    .end local v18    # "i":I
    .end local v22    # "s":Ljava/lang/String;
    .end local v26    # "upper":Z
    :cond_290
    if-nez p7, :cond_24f

    .line 3474
    const/16 v21, 0x1

    goto :goto_24f

    .line 3480
    .restart local v22    # "s":Ljava/lang/String;
    .restart local v26    # "upper":Z
    :cond_295
    const-string/jumbo v4, "0x"

    goto :goto_266

    .line 3486
    :cond_299
    const/16 v4, 0x70

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v19

    .line 3487
    .local v19, "idx":I
    const/4 v4, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v27

    .line 3488
    .local v27, "va":[C
    if-eqz v26, :cond_2c5

    .line 3489
    new-instance v25, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 3491
    .local v25, "tmp":Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v25

    .line 3492
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toCharArray()[C

    move-result-object v27

    .line 3494
    .end local v25    # "tmp":Ljava/lang/String;
    :cond_2c5
    if-eqz v21, :cond_2d1

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter$FormatSpecifier;->addZeros([CI)[C

    move-result-object v27

    .end local v27    # "va":[C
    :cond_2d1
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 3495
    if-eqz v26, :cond_2f0

    const/16 v4, 0x50

    :goto_2dc
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3496
    add-int/lit8 v4, v19, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e9

    .line 3495
    :cond_2f0
    const/16 v4, 0x70

    goto :goto_2dc

    .line 3369
    nop

    :array_2f4
    .array-data 2
        0x2bs
        0x30s
        0x30s
    .end array-data
.end method

.method private print(Ljava/lang/StringBuilder;Ljava/math/BigDecimal;Ljava/util/Locale;Ljava/util/Formatter$Flags;CIZ)V
    .registers 49
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

    .prologue
    .line 3646
    const/16 v4, 0x65

    move/from16 v0, p5

    if-ne v0, v4, :cond_111

    .line 3648
    const/4 v4, -0x1

    move/from16 v0, p6

    if-ne v0, v4, :cond_db

    const/16 v19, 0x6

    .line 3649
    .local v19, "prec":I
    :goto_d
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->scale()I

    move-result v35

    .line 3650
    .local v35, "scale":I
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->precision()I

    move-result v34

    .line 3651
    .local v34, "origPrec":I
    const/16 v33, 0x0

    .line 3654
    .local v33, "nzeros":I
    add-int/lit8 v4, v34, -0x1

    move/from16 v0, v19

    if-le v0, v4, :cond_df

    .line 3655
    move/from16 v29, v34

    .line 3656
    .local v29, "compPrec":I
    add-int/lit8 v4, v34, -0x1

    sub-int v33, v19, v4

    .line 3661
    :goto_23
    new-instance v32, Ljava/math/MathContext;

    move-object/from16 v0, v32

    move/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/math/MathContext;-><init>(I)V

    .line 3663
    .local v32, "mc":Ljava/math/MathContext;
    new-instance v39, Ljava/math/BigDecimal;

    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v4

    move-object/from16 v0, v39

    move/from16 v1, v35

    move-object/from16 v2, v32

    invoke-direct {v0, v4, v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;ILjava/math/MathContext;)V

    .line 3666
    .local v39, "v":Ljava/math/BigDecimal;
    new-instance v28, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;

    invoke-virtual/range {v39 .. v39}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual/range {v39 .. v39}, Ljava/math/BigDecimal;->scale()I

    move-result v5

    .line 3667
    sget-object v7, Ljava/util/Formatter$BigDecimalLayoutForm;->SCIENTIFIC:Ljava/util/Formatter$BigDecimalLayoutForm;

    .line 3666
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v5, v7}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;-><init>(Ljava/util/Formatter$FormatSpecifier;Ljava/math/BigInteger;ILjava/util/Formatter$BigDecimalLayoutForm;)V

    .line 3669
    .local v28, "bdl":Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;
    invoke-virtual/range {v28 .. v28}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mantissa()[C

    move-result-object v6

    .line 3676
    .local v6, "mant":[C
    const/4 v4, 0x1

    move/from16 v0, v34

    if-eq v0, v4, :cond_5f

    invoke-virtual/range {v28 .. v28}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->hasDot()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_71

    .line 3677
    :cond_5f
    if-gtz v33, :cond_6b

    sget-object v4, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v4

    .line 3676
    if-eqz v4, :cond_71

    .line 3678
    :cond_6b
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Ljava/util/Formatter$FormatSpecifier;->addDot([C)[C

    move-result-object v6

    .line 3682
    :cond_71
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v6, v1}, Ljava/util/Formatter$FormatSpecifier;->trailingZeros([CI)[C

    move-result-object v6

    .line 3684
    invoke-virtual/range {v28 .. v28}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exponent()[C

    move-result-object v31

    .line 3685
    .local v31, "exp":[C
    move-object/from16 v0, p0

    iget v8, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    .line 3686
    .local v8, "newW":I
    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_9c

    .line 3687
    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    move-object/from16 v0, v31

    array-length v5, v0

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p7

    invoke-direct {v0, v4, v1, v2}, Ljava/util/Formatter$FormatSpecifier;->adjustWidth(ILjava/util/Formatter$Flags;Z)I

    move-result v8

    :cond_9c
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p4

    move-object/from16 v9, p3

    .line 3688
    invoke-direct/range {v4 .. v9}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    .line 3690
    sget-object v4, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v4

    if-eqz v4, :cond_e3

    const/16 v4, 0x45

    :goto_b3
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3692
    invoke-virtual/range {p4 .. p4}, Ljava/util/Formatter$Flags;->dup()Ljava/util/Formatter$Flags;

    move-result-object v4

    sget-object v5, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    invoke-virtual {v4, v5}, Ljava/util/Formatter$Flags;->remove(Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;

    move-result-object v12

    .line 3693
    .local v12, "flags":Ljava/util/Formatter$Flags;
    const/4 v4, 0x0

    aget-char v36, v31, v4

    .line 3694
    .local v36, "sign":C
    sget-boolean v4, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v4, :cond_e6

    const/16 v4, 0x2b

    move/from16 v0, v36

    if-eq v0, v4, :cond_e6

    const/16 v4, 0x2d

    move/from16 v0, v36

    if-eq v0, v4, :cond_e6

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 3648
    .end local v6    # "mant":[C
    .end local v8    # "newW":I
    .end local v12    # "flags":Ljava/util/Formatter$Flags;
    .end local v19    # "prec":I
    .end local v28    # "bdl":Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;
    .end local v29    # "compPrec":I
    .end local v31    # "exp":[C
    .end local v32    # "mc":Ljava/math/MathContext;
    .end local v33    # "nzeros":I
    .end local v34    # "origPrec":I
    .end local v35    # "scale":I
    .end local v36    # "sign":C
    .end local v39    # "v":Ljava/math/BigDecimal;
    :cond_db
    move/from16 v19, p6

    .restart local v19    # "prec":I
    goto/16 :goto_d

    .line 3658
    .restart local v33    # "nzeros":I
    .restart local v34    # "origPrec":I
    .restart local v35    # "scale":I
    :cond_df
    add-int/lit8 v29, v19, 0x1

    .restart local v29    # "compPrec":I
    goto/16 :goto_23

    .line 3690
    .restart local v6    # "mant":[C
    .restart local v8    # "newW":I
    .restart local v28    # "bdl":Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;
    .restart local v31    # "exp":[C
    .restart local v32    # "mc":Ljava/math/MathContext;
    .restart local v39    # "v":Ljava/math/BigDecimal;
    :cond_e3
    const/16 v4, 0x65

    goto :goto_b3

    .line 3695
    .restart local v12    # "flags":Ljava/util/Formatter$Flags;
    .restart local v36    # "sign":C
    :cond_e6
    const/4 v4, 0x0

    aget-char v4, v31, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3697
    move-object/from16 v0, v31

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    new-array v11, v4, [C

    .line 3698
    .local v11, "tmp":[C
    move-object/from16 v0, v31

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, v31

    invoke-static {v0, v5, v11, v7, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 3699
    const/4 v10, 0x0

    const/4 v13, -0x1

    move-object/from16 v9, p0

    move-object/from16 v14, p3

    invoke-direct/range {v9 .. v14}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3777
    .end local v6    # "mant":[C
    .end local v8    # "newW":I
    .end local v11    # "tmp":[C
    .end local v12    # "flags":Ljava/util/Formatter$Flags;
    .end local v19    # "prec":I
    .end local v28    # "bdl":Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;
    .end local v29    # "compPrec":I
    .end local v31    # "exp":[C
    .end local v32    # "mc":Ljava/math/MathContext;
    .end local v33    # "nzeros":I
    .end local v34    # "origPrec":I
    .end local v35    # "scale":I
    .end local v36    # "sign":C
    .end local v39    # "v":Ljava/math/BigDecimal;
    :cond_110
    :goto_110
    return-void

    .line 3700
    :cond_111
    const/16 v4, 0x66

    move/from16 v0, p5

    if-ne v0, v4, :cond_1c4

    .line 3702
    const/4 v4, -0x1

    move/from16 v0, p6

    if-ne v0, v4, :cond_1a1

    const/16 v19, 0x6

    .line 3703
    .restart local v19    # "prec":I
    :goto_11e
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->scale()I

    move-result v35

    .line 3705
    .restart local v35    # "scale":I
    move/from16 v0, v35

    move/from16 v1, v19

    if-le v0, v1, :cond_13c

    .line 3707
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->precision()I

    move-result v29

    .line 3708
    .restart local v29    # "compPrec":I
    move/from16 v0, v29

    move/from16 v1, v35

    if-gt v0, v1, :cond_1a5

    .line 3710
    sget-object v4, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p2

    .line 3718
    .end local v29    # "compPrec":I
    :cond_13c
    :goto_13c
    new-instance v28, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;

    .line 3719
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v4

    .line 3720
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->scale()I

    move-result v5

    .line 3721
    sget-object v7, Ljava/util/Formatter$BigDecimalLayoutForm;->DECIMAL_FLOAT:Ljava/util/Formatter$BigDecimalLayoutForm;

    .line 3718
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v5, v7}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;-><init>(Ljava/util/Formatter$FormatSpecifier;Ljava/math/BigInteger;ILjava/util/Formatter$BigDecimalLayoutForm;)V

    .line 3723
    .restart local v28    # "bdl":Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;
    invoke-virtual/range {v28 .. v28}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mantissa()[C

    move-result-object v6

    .line 3724
    .restart local v6    # "mant":[C
    invoke-virtual/range {v28 .. v28}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->scale()I

    move-result v4

    move/from16 v0, v19

    if-ge v4, v0, :cond_1c1

    invoke-virtual/range {v28 .. v28}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->scale()I

    move-result v4

    sub-int v33, v19, v4

    .line 3731
    .restart local v33    # "nzeros":I
    :goto_161
    invoke-virtual/range {v28 .. v28}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->scale()I

    move-result v4

    if-nez v4, :cond_17d

    sget-object v4, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v4

    if-nez v4, :cond_173

    if-lez v33, :cond_17d

    .line 3732
    :cond_173
    invoke-virtual/range {v28 .. v28}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mantissa()[C

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Ljava/util/Formatter$FormatSpecifier;->addDot([C)[C

    move-result-object v6

    .line 3736
    :cond_17d
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v6, v1}, Ljava/util/Formatter$FormatSpecifier;->trailingZeros([CI)[C

    move-result-object v6

    .line 3738
    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p7

    invoke-direct {v0, v4, v1, v2}, Ljava/util/Formatter$FormatSpecifier;->adjustWidth(ILjava/util/Formatter$Flags;Z)I

    move-result v17

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object v15, v6

    move-object/from16 v16, p4

    move-object/from16 v18, p3

    invoke-direct/range {v13 .. v18}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    goto/16 :goto_110

    .line 3702
    .end local v6    # "mant":[C
    .end local v19    # "prec":I
    .end local v28    # "bdl":Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;
    .end local v33    # "nzeros":I
    .end local v35    # "scale":I
    :cond_1a1
    move/from16 v19, p6

    .restart local v19    # "prec":I
    goto/16 :goto_11e

    .line 3712
    .restart local v29    # "compPrec":I
    .restart local v35    # "scale":I
    :cond_1a5
    sub-int v4, v35, v19

    sub-int v29, v29, v4

    .line 3713
    new-instance v40, Ljava/math/BigDecimal;

    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v4

    .line 3715
    new-instance v5, Ljava/math/MathContext;

    move/from16 v0, v29

    invoke-direct {v5, v0}, Ljava/math/MathContext;-><init>(I)V

    .line 3713
    move-object/from16 v0, v40

    move/from16 v1, v35

    invoke-direct {v0, v4, v1, v5}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;ILjava/math/MathContext;)V

    .end local p2    # "value":Ljava/math/BigDecimal;
    .local v40, "value":Ljava/math/BigDecimal;
    move-object/from16 p2, v40

    .end local v40    # "value":Ljava/math/BigDecimal;
    .restart local p2    # "value":Ljava/math/BigDecimal;
    goto/16 :goto_13c

    .line 3724
    .end local v29    # "compPrec":I
    .restart local v6    # "mant":[C
    .restart local v28    # "bdl":Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;
    :cond_1c1
    const/16 v33, 0x0

    .restart local v33    # "nzeros":I
    goto :goto_161

    .line 3739
    .end local v6    # "mant":[C
    .end local v19    # "prec":I
    .end local v28    # "bdl":Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;
    .end local v33    # "nzeros":I
    .end local v35    # "scale":I
    :cond_1c4
    const/16 v4, 0x67

    move/from16 v0, p5

    if-ne v0, v4, :cond_249

    .line 3740
    move/from16 v19, p6

    .line 3741
    .restart local v19    # "prec":I
    const/4 v4, -0x1

    move/from16 v0, p6

    if-ne v0, v4, :cond_22f

    .line 3742
    const/16 v19, 0x6

    .line 3746
    :cond_1d3
    :goto_1d3
    const-wide/16 v4, 0x1

    const/4 v7, 0x4

    invoke-static {v4, v5, v7}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v37

    .line 3747
    .local v37, "tenToTheNegFour":Ljava/math/BigDecimal;
    const-wide/16 v4, 0x1

    move/from16 v0, v19

    neg-int v7, v0

    invoke-static {v4, v5, v7}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v38

    .line 3748
    .local v38, "tenToThePrec":Ljava/math/BigDecimal;
    sget-object v4, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_203

    .line 3749
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_234

    .line 3750
    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_234

    .line 3752
    :cond_203
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->scale()I

    move-result v4

    neg-int v4, v4

    .line 3753
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .line 3752
    add-int v30, v4, v5

    .line 3765
    .local v30, "e":I
    sub-int v4, v19, v30

    add-int/lit8 v19, v4, -0x1

    .line 3767
    const/16 v18, 0x66

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    move/from16 v20, p7

    invoke-direct/range {v13 .. v20}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/math/BigDecimal;Ljava/util/Locale;Ljava/util/Formatter$Flags;CIZ)V

    goto/16 :goto_110

    .line 3743
    .end local v30    # "e":I
    .end local v37    # "tenToTheNegFour":Ljava/math/BigDecimal;
    .end local v38    # "tenToThePrec":Ljava/math/BigDecimal;
    :cond_22f
    if-nez p6, :cond_1d3

    .line 3744
    const/16 v19, 0x1

    goto :goto_1d3

    .line 3770
    .restart local v37    # "tenToTheNegFour":Ljava/math/BigDecimal;
    .restart local v38    # "tenToThePrec":Ljava/math/BigDecimal;
    :cond_234
    add-int/lit8 v26, v19, -0x1

    const/16 v25, 0x65

    move-object/from16 v20, p0

    move-object/from16 v21, p1

    move-object/from16 v22, p2

    move-object/from16 v23, p3

    move-object/from16 v24, p4

    move/from16 v27, p7

    invoke-direct/range {v20 .. v27}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/math/BigDecimal;Ljava/util/Locale;Ljava/util/Formatter$Flags;CIZ)V

    goto/16 :goto_110

    .line 3772
    .end local v19    # "prec":I
    .end local v37    # "tenToTheNegFour":Ljava/math/BigDecimal;
    .end local v38    # "tenToThePrec":Ljava/math/BigDecimal;
    :cond_249
    const/16 v4, 0x61

    move/from16 v0, p5

    if-ne v0, v4, :cond_110

    .line 3775
    sget-boolean v4, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v4, :cond_110

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
.end method

.method private print(Ljava/math/BigDecimal;Ljava/util/Locale;)V
    .registers 11
    .param p1, "value"    # Ljava/math/BigDecimal;
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3623
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v3, 0x61

    if-ne v0, v3, :cond_b

    .line 3624
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-direct {p0, v0, p1}, Ljava/util/Formatter$FormatSpecifier;->failConversion(CLjava/lang/Object;)V

    .line 3625
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3626
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3f

    const/4 v7, 0x1

    .line 3627
    .local v7, "neg":Z
    :goto_18
    invoke-virtual {p1}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object v2

    .line 3629
    .local v2, "v":Ljava/math/BigDecimal;
    invoke-direct {p0, v1, v7}, Ljava/util/Formatter$FormatSpecifier;->leadingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 3632
    iget-object v4, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    iget-char v5, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    iget v6, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/math/BigDecimal;Ljava/util/Locale;Ljava/util/Formatter$Flags;CIZ)V

    .line 3635
    invoke-direct {p0, v1, v7}, Ljava/util/Formatter$FormatSpecifier;->trailingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 3638
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-static {v0}, Ljava/util/Formatter;->-get0(Ljava/util/Formatter;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Ljava/util/Formatter$FormatSpecifier;->justify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 3639
    return-void

    .line 3626
    .end local v2    # "v":Ljava/math/BigDecimal;
    .end local v7    # "neg":Z
    :cond_3f
    const/4 v7, 0x0

    .restart local v7    # "neg":Z
    goto :goto_18
.end method

.method private print(Ljava/math/BigInteger;Ljava/util/Locale;)V
    .registers 15
    .param p1, "value"    # Ljava/math/BigInteger;
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, -0x1

    const/16 v4, 0x30

    .line 3261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3262
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ne v0, v11, :cond_4f

    const/4 v8, 0x1

    .line 3263
    .local v8, "neg":Z
    :goto_f
    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v10

    .line 3266
    .local v10, "v":Ljava/math/BigInteger;
    invoke-direct {p0, v1, v8}, Ljava/util/Formatter$FormatSpecifier;->leadingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 3269
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v3, 0x64

    if-ne v0, v3, :cond_51

    .line 3270
    invoke-virtual {v10}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 3271
    .local v2, "va":[C
    iget-object v3, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    iget-object v4, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    invoke-direct {p0, v0, v4, v8}, Ljava/util/Formatter$FormatSpecifier;->adjustWidth(ILjava/util/Formatter$Flags;Z)I

    move-result v4

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    .line 3310
    .end local v2    # "va":[C
    :cond_33
    :goto_33
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ne v0, v11, :cond_10b

    const/4 v0, 0x1

    :goto_3a
    invoke-direct {p0, v1, v0}, Ljava/util/Formatter$FormatSpecifier;->trailingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 3313
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-static {v0}, Ljava/util/Formatter;->-get0(Ljava/util/Formatter;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Ljava/util/Formatter$FormatSpecifier;->justify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 3314
    return-void

    .line 3262
    .end local v8    # "neg":Z
    .end local v10    # "v":Ljava/math/BigInteger;
    :cond_4f
    const/4 v8, 0x0

    .restart local v8    # "neg":Z
    goto :goto_f

    .line 3272
    .restart local v10    # "v":Ljava/math/BigInteger;
    :cond_51
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v3, 0x6f

    if-ne v0, v3, :cond_9e

    .line 3273
    const/16 v0, 0x8

    invoke-virtual {v10, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 3275
    .local v9, "s":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int v7, v0, v3

    .line 3276
    .local v7, "len":I
    if-eqz v8, :cond_75

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 3277
    add-int/lit8 v7, v7, 0x1

    .line 3280
    :cond_75
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 3281
    add-int/lit8 v7, v7, 0x1

    .line 3282
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3284
    :cond_84
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 3285
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_8f
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    sub-int/2addr v0, v7

    if-ge v6, v0, :cond_9a

    .line 3286
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3285
    add-int/lit8 v6, v6, 0x1

    goto :goto_8f

    .line 3288
    .end local v6    # "i":I
    :cond_9a
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 3289
    .end local v7    # "len":I
    .end local v9    # "s":Ljava/lang/String;
    :cond_9e
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v3, 0x78

    if-ne v0, v3, :cond_33

    .line 3290
    const/16 v0, 0x10

    invoke-virtual {v10, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 3292
    .restart local v9    # "s":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int v7, v0, v3

    .line 3293
    .restart local v7    # "len":I
    if-eqz v8, :cond_c2

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 3294
    add-int/lit8 v7, v7, 0x1

    .line 3297
    :cond_c2
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_de

    .line 3298
    add-int/lit8 v7, v7, 0x2

    .line 3299
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_f4

    const-string/jumbo v0, "0X"

    :goto_db
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3301
    :cond_de
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 3302
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_e9
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    sub-int/2addr v0, v7

    if-ge v6, v0, :cond_f8

    .line 3303
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3302
    add-int/lit8 v6, v6, 0x1

    goto :goto_e9

    .line 3299
    .end local v6    # "i":I
    :cond_f4
    const-string/jumbo v0, "0x"

    goto :goto_db

    .line 3304
    :cond_f8
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_106

    .line 3305
    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    .line 3306
    :cond_106
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_33

    .line 3310
    .end local v7    # "len":I
    .end local v9    # "s":Ljava/lang/String;
    :cond_10b
    const/4 v0, 0x0

    goto/16 :goto_3a
.end method

.method private print(Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)V
    .registers 8
    .param p1, "t"    # Ljava/time/temporal/TemporalAccessor;
    .param p2, "c"    # C
    .param p3, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4160
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, v1, p1, p2, p3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    .line 4162
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/util/Formatter$FormatSpecifier;->justify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4163
    .local v0, "s":Ljava/lang/String;
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v2, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 4164
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 4165
    :cond_1e
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-static {v2}, Ljava/util/Formatter;->-get0(Ljava/util/Formatter;)Ljava/lang/Appendable;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 4166
    return-void
.end method

.method private print(Ljava/util/Calendar;CLjava/util/Locale;)V
    .registers 8
    .param p1, "t"    # Ljava/util/Calendar;
    .param p2, "c"    # C
    .param p3, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3938
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3939
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, v1, p1, p2, p3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    .line 3942
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/util/Formatter$FormatSpecifier;->justify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3943
    .local v0, "s":Ljava/lang/String;
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v2, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 3944
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 3946
    :cond_1e
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-static {v2}, Ljava/util/Formatter;->-get0(Ljava/util/Formatter;)Ljava/lang/Appendable;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 3947
    return-void
.end method

.method private print(SLjava/util/Locale;)V
    .registers 7
    .param p1, "value"    # S
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3159
    int-to-long v0, p1

    .line 3160
    .local v0, "v":J
    if-gez p1, :cond_27

    .line 3161
    iget-char v2, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v3, 0x6f

    if-eq v2, v3, :cond_f

    .line 3162
    iget-char v2, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v3, 0x78

    if-ne v2, v3, :cond_27

    .line 3163
    :cond_f
    const-wide/32 v2, 0x10000

    add-long/2addr v0, v2

    .line 3164
    sget-boolean v2, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v2, :cond_27

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_27

    new-instance v2, Ljava/lang/AssertionError;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 3166
    :cond_27
    invoke-direct {p0, v0, v1, p2}, Ljava/util/Formatter$FormatSpecifier;->print(JLjava/util/Locale;)V

    .line 3167
    return-void
.end method

.method private printBoolean(Ljava/lang/Object;)V
    .registers 4
    .param p1, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2983
    if-eqz p1, :cond_16

    .line 2984
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_10

    .line 2985
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2989
    .local v0, "s":Ljava/lang/String;
    :goto_c
    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;)V

    .line 2990
    return-void

    .line 2986
    .end local v0    # "s":Ljava/lang/String;
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_10
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_c

    .line 2988
    .end local v0    # "s":Ljava/lang/String;
    :cond_16
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_c
.end method

.method private printCharacter(Ljava/lang/Object;)V
    .registers 7
    .param p1, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2934
    if-nez p1, :cond_9

    .line 2935
    const-string/jumbo v4, "null"

    invoke-direct {p0, v4}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;)V

    .line 2936
    return-void

    .line 2938
    :cond_9
    const/4 v3, 0x0

    .line 2939
    .local v3, "s":Ljava/lang/String;
    instance-of v4, p1, Ljava/lang/Character;

    if-eqz v4, :cond_18

    .line 2940
    check-cast p1, Ljava/lang/Character;

    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2962
    .end local v3    # "s":Ljava/lang/String;
    :goto_14
    invoke-direct {p0, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;)V

    .line 2963
    return-void

    .line 2941
    .restart local v3    # "s":Ljava/lang/String;
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_18
    instance-of v4, p1, Ljava/lang/Byte;

    if-eqz v4, :cond_38

    .line 2942
    check-cast p1, Ljava/lang/Byte;

    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 2943
    .local v0, "i":B
    invoke-static {v0}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 2944
    new-instance v3, Ljava/lang/String;

    .end local v3    # "s":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    .local v3, "s":Ljava/lang/String;
    goto :goto_14

    .line 2946
    .local v3, "s":Ljava/lang/String;
    :cond_32
    new-instance v4, Ljava/util/IllegalFormatCodePointException;

    invoke-direct {v4, v0}, Ljava/util/IllegalFormatCodePointException;-><init>(I)V

    throw v4

    .line 2947
    .end local v0    # "i":B
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_38
    instance-of v4, p1, Ljava/lang/Short;

    if-eqz v4, :cond_58

    .line 2948
    check-cast p1, Ljava/lang/Short;

    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v2

    .line 2949
    .local v2, "i":S
    invoke-static {v2}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 2950
    new-instance v3, Ljava/lang/String;

    .end local v3    # "s":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    .local v3, "s":Ljava/lang/String;
    goto :goto_14

    .line 2952
    .local v3, "s":Ljava/lang/String;
    :cond_52
    new-instance v4, Ljava/util/IllegalFormatCodePointException;

    invoke-direct {v4, v2}, Ljava/util/IllegalFormatCodePointException;-><init>(I)V

    throw v4

    .line 2953
    .end local v2    # "i":S
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_58
    instance-of v4, p1, Ljava/lang/Integer;

    if-eqz v4, :cond_78

    .line 2954
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2955
    .local v1, "i":I
    invoke-static {v1}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v4

    if-eqz v4, :cond_72

    .line 2956
    new-instance v3, Ljava/lang/String;

    .end local v3    # "s":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    .local v3, "s":Ljava/lang/String;
    goto :goto_14

    .line 2958
    .local v3, "s":Ljava/lang/String;
    :cond_72
    new-instance v4, Ljava/util/IllegalFormatCodePointException;

    invoke-direct {v4, v1}, Ljava/util/IllegalFormatCodePointException;-><init>(I)V

    throw v4

    .line 2960
    .end local v1    # "i":I
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_78
    iget-char v4, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-direct {p0, v4, p1}, Ljava/util/Formatter$FormatSpecifier;->failConversion(CLjava/lang/Object;)V

    goto :goto_14
.end method

.method private printDateTime(Ljava/lang/Object;Ljava/util/Locale;)V
    .registers 7
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2901
    if-nez p1, :cond_9

    .line 2902
    const-string/jumbo v1, "null"

    invoke-direct {p0, v1}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;)V

    .line 2903
    return-void

    .line 2905
    :cond_9
    const/4 v0, 0x0

    .line 2909
    .local v0, "cal":Ljava/util/Calendar;
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_27

    .line 2912
    if-nez p2, :cond_25

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    :goto_12
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 2913
    .local v0, "cal":Ljava/util/Calendar;
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2930
    .end local v0    # "cal":Ljava/util/Calendar;
    :goto_1f
    iget-char v1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-direct {p0, v0, v1, p2}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/util/Calendar;CLjava/util/Locale;)V

    .line 2931
    return-void

    .local v0, "cal":Ljava/util/Calendar;
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_25
    move-object v1, p2

    .line 2912
    goto :goto_12

    .line 2914
    :cond_27
    instance-of v1, p1, Ljava/util/Date;

    if-eqz v1, :cond_3b

    .line 2917
    if-nez p2, :cond_39

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    :goto_2f
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 2918
    .local v0, "cal":Ljava/util/Calendar;
    check-cast p1, Ljava/util/Date;

    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_1f

    .local v0, "cal":Ljava/util/Calendar;
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_39
    move-object v1, p2

    .line 2917
    goto :goto_2f

    .line 2919
    :cond_3b
    instance-of v1, p1, Ljava/util/Calendar;

    if-eqz v1, :cond_4c

    .line 2920
    check-cast p1, Ljava/util/Calendar;

    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cal":Ljava/util/Calendar;
    check-cast v0, Ljava/util/Calendar;

    .line 2921
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setLenient(Z)V

    goto :goto_1f

    .line 2922
    .local v0, "cal":Ljava/util/Calendar;
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_4c
    instance-of v1, p1, Ljava/time/temporal/TemporalAccessor;

    if-eqz v1, :cond_58

    .line 2923
    check-cast p1, Ljava/time/temporal/TemporalAccessor;

    .end local p1    # "arg":Ljava/lang/Object;
    iget-char v1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-direct {p0, p1, v1, p2}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)V

    .line 2924
    return-void

    .line 2926
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_58
    iget-char v1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-direct {p0, v1, p1}, Ljava/util/Formatter$FormatSpecifier;->failConversion(CLjava/lang/Object;)V

    goto :goto_1f
.end method

.method private printFloat(Ljava/lang/Object;Ljava/util/Locale;)V
    .registers 5
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2888
    if-nez p1, :cond_9

    .line 2889
    const-string/jumbo v0, "null"

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;)V

    .line 2898
    .end local p1    # "arg":Ljava/lang/Object;
    :goto_8
    return-void

    .line 2890
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_9
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_17

    .line 2891
    check-cast p1, Ljava/lang/Float;

    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0, p2}, Ljava/util/Formatter$FormatSpecifier;->print(FLjava/util/Locale;)V

    goto :goto_8

    .line 2892
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_17
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_25

    .line 2893
    check-cast p1, Ljava/lang/Double;

    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/util/Formatter$FormatSpecifier;->print(DLjava/util/Locale;)V

    goto :goto_8

    .line 2894
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_25
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_2f

    .line 2895
    check-cast p1, Ljava/math/BigDecimal;

    .end local p1    # "arg":Ljava/lang/Object;
    invoke-direct {p0, p1, p2}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/math/BigDecimal;Ljava/util/Locale;)V

    goto :goto_8

    .line 2897
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_2f
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-direct {p0, v0, p1}, Ljava/util/Formatter$FormatSpecifier;->failConversion(CLjava/lang/Object;)V

    goto :goto_8
.end method

.method private printHashCode(Ljava/lang/Object;)V
    .registers 4
    .param p1, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2993
    if-nez p1, :cond_9

    .line 2994
    const-string/jumbo v0, "null"

    .line 2996
    .local v0, "s":Ljava/lang/String;
    :goto_5
    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;)V

    .line 2997
    return-void

    .line 2995
    .end local v0    # "s":Ljava/lang/String;
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_5
.end method

.method private printInteger(Ljava/lang/Object;Ljava/util/Locale;)V
    .registers 5
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2871
    if-nez p1, :cond_9

    .line 2872
    const-string/jumbo v0, "null"

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;)V

    .line 2885
    .end local p1    # "arg":Ljava/lang/Object;
    :goto_8
    return-void

    .line 2873
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_9
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_17

    .line 2874
    check-cast p1, Ljava/lang/Byte;

    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-direct {p0, v0, p2}, Ljava/util/Formatter$FormatSpecifier;->print(BLjava/util/Locale;)V

    goto :goto_8

    .line 2875
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_17
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_25

    .line 2876
    check-cast p1, Ljava/lang/Short;

    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-direct {p0, v0, p2}, Ljava/util/Formatter$FormatSpecifier;->print(SLjava/util/Locale;)V

    goto :goto_8

    .line 2877
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_25
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_33

    .line 2878
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p2}, Ljava/util/Formatter$FormatSpecifier;->print(ILjava/util/Locale;)V

    goto :goto_8

    .line 2879
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_33
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_41

    .line 2880
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/util/Formatter$FormatSpecifier;->print(JLjava/util/Locale;)V

    goto :goto_8

    .line 2881
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_41
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_4b

    .line 2882
    check-cast p1, Ljava/math/BigInteger;

    .end local p1    # "arg":Ljava/lang/Object;
    invoke-direct {p0, p1, p2}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/math/BigInteger;Ljava/util/Locale;)V

    goto :goto_8

    .line 2884
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_4b
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-direct {p0, v0, p1}, Ljava/util/Formatter$FormatSpecifier;->failConversion(CLjava/lang/Object;)V

    goto :goto_8
.end method

.method private printString(Ljava/lang/Object;Ljava/util/Locale;)V
    .registers 8
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2966
    instance-of v2, p1, Ljava/util/Formattable;

    if-eqz v2, :cond_26

    .line 2967
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    .line 2968
    .local v0, "fmt":Ljava/util/Formatter;
    invoke-virtual {v0}, Ljava/util/Formatter;->locale()Ljava/util/Locale;

    move-result-object v2

    if-eq v2, p2, :cond_16

    .line 2969
    new-instance v1, Ljava/util/Formatter;

    invoke-virtual {v0}, Ljava/util/Formatter;->out()Ljava/lang/Appendable;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .end local v0    # "fmt":Ljava/util/Formatter;
    .local v1, "fmt":Ljava/util/Formatter;
    move-object v0, v1

    .line 2970
    .end local v1    # "fmt":Ljava/util/Formatter;
    .restart local v0    # "fmt":Ljava/util/Formatter;
    :cond_16
    check-cast p1, Ljava/util/Formattable;

    .end local p1    # "arg":Ljava/lang/Object;
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    invoke-virtual {v2}, Ljava/util/Formatter$Flags;->valueOf()I

    move-result v2

    iget v3, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    iget v4, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    invoke-interface {p1, v0, v2, v3, v4}, Ljava/util/Formattable;->formatTo(Ljava/util/Formatter;III)V

    .line 2979
    .end local v0    # "fmt":Ljava/util/Formatter;
    :goto_25
    return-void

    .line 2972
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_26
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    invoke-virtual {v2, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 2973
    sget-object v2, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    const/16 v3, 0x73

    invoke-direct {p0, v2, v3}, Ljava/util/Formatter$FormatSpecifier;->failMismatch(Ljava/util/Formatter$Flags;C)V

    .line 2974
    :cond_37
    if-nez p1, :cond_40

    .line 2975
    const-string/jumbo v2, "null"

    invoke-direct {p0, v2}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;)V

    goto :goto_25

    .line 2977
    :cond_40
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;)V

    goto :goto_25
.end method

.method private trailingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
    .registers 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "neg"    # Z

    .prologue
    .line 3255
    if-eqz p2, :cond_11

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3256
    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3257
    :cond_11
    return-object p1
.end method

.method private trailingZeros([CI)[C
    .registers 7
    .param p1, "mant"    # [C
    .param p2, "nzeros"    # I

    .prologue
    const/4 v3, 0x0

    .line 3926
    move-object v1, p1

    .line 3927
    .local v1, "tmp":[C
    if-lez p2, :cond_17

    .line 3928
    array-length v2, p1

    add-int/2addr v2, p2

    new-array v1, v2, [C

    .line 3929
    array-length v2, p1

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 3930
    array-length v0, p1

    .local v0, "i":I
    :goto_d
    array-length v2, v1

    if-ge v0, v2, :cond_17

    .line 3931
    const/16 v2, 0x30

    aput-char v2, v1, v0

    .line 3930
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 3933
    .end local v0    # "i":I
    :cond_17
    return-object v1
.end method

.method private width(Ljava/lang/String;)I
    .registers 5
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2740
    const/4 v1, -0x1

    iput v1, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    .line 2741
    if-eqz p1, :cond_22

    .line 2743
    :try_start_5
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    .line 2744
    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    if-gez v1, :cond_22

    .line 2745
    new-instance v1, Ljava/util/IllegalFormatWidthException;

    iget v2, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    invoke-direct {v1, v2}, Ljava/util/IllegalFormatWidthException;-><init>(I)V

    throw v1
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_17} :catch_17

    .line 2746
    :catch_17
    move-exception v0

    .line 2747
    .local v0, "x":Ljava/lang/NumberFormatException;
    sget-boolean v1, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v1, :cond_22

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2750
    .end local v0    # "x":Ljava/lang/NumberFormatException;
    :cond_22
    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    return v1
.end method


# virtual methods
.method flags()Ljava/util/Formatter$Flags;
    .registers 2

    .prologue
    .line 2736
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    return-object v0
.end method

.method public index()I
    .registers 2

    .prologue
    .line 2725
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->index:I

    return v0
.end method

.method precision()I
    .registers 2

    .prologue
    .line 2774
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    return v0
.end method

.method public print(Ljava/lang/Object;Ljava/util/Locale;)V
    .registers 5
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2830
    iget-boolean v0, p0, Ljava/util/Formatter$FormatSpecifier;->dt:Z

    if-eqz v0, :cond_8

    .line 2831
    invoke-direct {p0, p1, p2}, Ljava/util/Formatter$FormatSpecifier;->printDateTime(Ljava/lang/Object;Ljava/util/Locale;)V

    .line 2832
    return-void

    .line 2834
    :cond_8
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    sparse-switch v0, :sswitch_data_4a

    .line 2866
    sget-boolean v0, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    if-nez v0, :cond_1a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2838
    :sswitch_17
    invoke-direct {p0, p1, p2}, Ljava/util/Formatter$FormatSpecifier;->printInteger(Ljava/lang/Object;Ljava/util/Locale;)V

    .line 2868
    :cond_1a
    :goto_1a
    return-void

    .line 2844
    :sswitch_1b
    invoke-direct {p0, p1, p2}, Ljava/util/Formatter$FormatSpecifier;->printFloat(Ljava/lang/Object;Ljava/util/Locale;)V

    goto :goto_1a

    .line 2848
    :sswitch_1f
    invoke-direct {p0, p1}, Ljava/util/Formatter$FormatSpecifier;->printCharacter(Ljava/lang/Object;)V

    goto :goto_1a

    .line 2851
    :sswitch_23
    invoke-direct {p0, p1}, Ljava/util/Formatter$FormatSpecifier;->printBoolean(Ljava/lang/Object;)V

    goto :goto_1a

    .line 2854
    :sswitch_27
    invoke-direct {p0, p1, p2}, Ljava/util/Formatter$FormatSpecifier;->printString(Ljava/lang/Object;Ljava/util/Locale;)V

    goto :goto_1a

    .line 2857
    :sswitch_2b
    invoke-direct {p0, p1}, Ljava/util/Formatter$FormatSpecifier;->printHashCode(Ljava/lang/Object;)V

    goto :goto_1a

    .line 2860
    :sswitch_2f
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-static {v0}, Ljava/util/Formatter;->-get0(Ljava/util/Formatter;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1a

    .line 2863
    :sswitch_3d
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-static {v0}, Ljava/util/Formatter;->-get0(Ljava/util/Formatter;)Ljava/lang/Appendable;

    move-result-object v0

    const/16 v1, 0x25

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_1a

    .line 2834
    nop

    :sswitch_data_4a
    .sparse-switch
        0x25 -> :sswitch_3d
        0x43 -> :sswitch_1f
        0x61 -> :sswitch_1b
        0x62 -> :sswitch_23
        0x63 -> :sswitch_1f
        0x64 -> :sswitch_17
        0x65 -> :sswitch_1b
        0x66 -> :sswitch_1b
        0x67 -> :sswitch_1b
        0x68 -> :sswitch_2b
        0x6e -> :sswitch_2f
        0x6f -> :sswitch_17
        0x73 -> :sswitch_27
        0x78 -> :sswitch_17
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, -0x1

    .line 3025
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "%"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3027
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    invoke-virtual {v2}, Ljava/util/Formatter$Flags;->dup()Ljava/util/Formatter$Flags;

    move-result-object v2

    sget-object v3, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v2, v3}, Ljava/util/Formatter$Flags;->remove(Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;

    move-result-object v0

    .line 3028
    .local v0, "dupf":Ljava/util/Formatter$Flags;
    invoke-virtual {v0}, Ljava/util/Formatter$Flags;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3029
    iget v2, p0, Ljava/util/Formatter$FormatSpecifier;->index:I

    if-lez v2, :cond_2b

    .line 3030
    iget v2, p0, Ljava/util/Formatter$FormatSpecifier;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3031
    :cond_2b
    iget v2, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    if-eq v2, v4, :cond_34

    .line 3032
    iget v2, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3033
    :cond_34
    iget v2, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    if-eq v2, v4, :cond_43

    .line 3034
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3035
    :cond_43
    iget-boolean v2, p0, Ljava/util/Formatter$FormatSpecifier;->dt:Z

    if-eqz v2, :cond_56

    .line 3036
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v2, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v2

    if-eqz v2, :cond_6e

    const/16 v2, 0x54

    :goto_53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3037
    :cond_56
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v2, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 3038
    iget-char v2, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    .line 3037
    :goto_66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3039
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 3036
    :cond_6e
    const/16 v2, 0x74

    goto :goto_53

    .line 3038
    :cond_71
    iget-char v2, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    goto :goto_66
.end method

.method width()I
    .registers 2

    .prologue
    .line 2754
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    return v0
.end method
