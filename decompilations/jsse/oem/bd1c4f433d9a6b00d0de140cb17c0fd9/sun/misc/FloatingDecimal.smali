.class public Lsun/misc/FloatingDecimal;
.super Ljava/lang/Object;
.source "FloatingDecimal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/misc/FloatingDecimal$1;,
        Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;,
        Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;,
        Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;,
        Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;,
        Lsun/misc/FloatingDecimal$ExceptionalBinaryToASCIIBuffer;,
        Lsun/misc/FloatingDecimal$HexFloatPattern;,
        Lsun/misc/FloatingDecimal$PreparedASCIIToBinaryBuffer;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static final A2BC_NEGATIVE_INFINITY:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

.field static final A2BC_NEGATIVE_ZERO:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

.field static final A2BC_NOT_A_NUMBER:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

.field static final A2BC_POSITIVE_INFINITY:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

.field static final A2BC_POSITIVE_ZERO:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

.field private static final B2AC_NEGATIVE_INFINITY:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

.field private static final B2AC_NEGATIVE_ZERO:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

.field private static final B2AC_NOT_A_NUMBER:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

.field private static final B2AC_POSITIVE_INFINITY:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

.field private static final B2AC_POSITIVE_ZERO:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

.field static final BIG_DECIMAL_EXPONENT:I = 0x144

.field static final EXP_ONE:J = 0x3ff0000000000000L

.field static final EXP_SHIFT:I = 0x34

.field static final FRACT_HOB:J = 0x10000000000000L

.field private static final INFINITY_LENGTH:I

.field private static final INFINITY_REP:Ljava/lang/String; = "Infinity"

.field static final INT_DECIMAL_DIGITS:I = 0x9

.field static final MAX_DECIMAL_DIGITS:I = 0xf

.field static final MAX_DECIMAL_EXPONENT:I = 0x134

.field static final MAX_NDIGITS:I = 0x44c

.field static final MAX_SMALL_BIN_EXP:I = 0x3e

.field static final MIN_DECIMAL_EXPONENT:I = -0x144

.field static final MIN_SMALL_BIN_EXP:I = -0x15

.field private static final NAN_LENGTH:I

.field private static final NAN_REP:Ljava/lang/String; = "NaN"

.field static final SINGLE_EXP_SHIFT:I = 0x17

.field static final SINGLE_FRACT_HOB:I = 0x800000

.field static final SINGLE_MAX_DECIMAL_DIGITS:I = 0x7

.field static final SINGLE_MAX_DECIMAL_EXPONENT:I = 0x26

.field static final SINGLE_MAX_NDIGITS:I = 0xc8

.field static final SINGLE_MIN_DECIMAL_EXPONENT:I = -0x2d

.field private static final threadLocalBinaryToASCIIBuffer:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/16 v4, 0x30

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-class v0, Lsun/misc/FloatingDecimal;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/misc/FloatingDecimal;->-assertionsDisabled:Z

    .line 246
    const-string/jumbo v0, "Infinity"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lsun/misc/FloatingDecimal;->INFINITY_LENGTH:I

    .line 248
    const-string/jumbo v0, "NaN"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lsun/misc/FloatingDecimal;->NAN_LENGTH:I

    .line 250
    new-instance v0, Lsun/misc/FloatingDecimal$ExceptionalBinaryToASCIIBuffer;

    const-string/jumbo v1, "Infinity"

    invoke-direct {v0, v1, v2}, Lsun/misc/FloatingDecimal$ExceptionalBinaryToASCIIBuffer;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lsun/misc/FloatingDecimal;->B2AC_POSITIVE_INFINITY:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    .line 251
    new-instance v0, Lsun/misc/FloatingDecimal$ExceptionalBinaryToASCIIBuffer;

    const-string/jumbo v1, "-Infinity"

    invoke-direct {v0, v1, v3}, Lsun/misc/FloatingDecimal$ExceptionalBinaryToASCIIBuffer;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lsun/misc/FloatingDecimal;->B2AC_NEGATIVE_INFINITY:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    .line 252
    new-instance v0, Lsun/misc/FloatingDecimal$ExceptionalBinaryToASCIIBuffer;

    const-string/jumbo v1, "NaN"

    invoke-direct {v0, v1, v2}, Lsun/misc/FloatingDecimal$ExceptionalBinaryToASCIIBuffer;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lsun/misc/FloatingDecimal;->B2AC_NOT_A_NUMBER:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    .line 253
    new-instance v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;

    new-array v1, v3, [C

    aput-char v4, v1, v2

    invoke-direct {v0, v2, v1}, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;-><init>(Z[C)V

    sput-object v0, Lsun/misc/FloatingDecimal;->B2AC_POSITIVE_ZERO:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    .line 254
    new-instance v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;

    new-array v1, v3, [C

    aput-char v4, v1, v2

    invoke-direct {v0, v3, v1}, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;-><init>(Z[C)V

    sput-object v0, Lsun/misc/FloatingDecimal;->B2AC_NEGATIVE_ZERO:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    .line 978
    new-instance v0, Lsun/misc/FloatingDecimal$1;

    invoke-direct {v0}, Lsun/misc/FloatingDecimal$1;-><init>()V

    .line 977
    sput-object v0, Lsun/misc/FloatingDecimal;->threadLocalBinaryToASCIIBuffer:Ljava/lang/ThreadLocal;

    .line 1025
    new-instance v0, Lsun/misc/FloatingDecimal$PreparedASCIIToBinaryBuffer;

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-direct {v0, v2, v3, v1}, Lsun/misc/FloatingDecimal$PreparedASCIIToBinaryBuffer;-><init>(DF)V

    sput-object v0, Lsun/misc/FloatingDecimal;->A2BC_POSITIVE_INFINITY:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    .line 1026
    new-instance v0, Lsun/misc/FloatingDecimal$PreparedASCIIToBinaryBuffer;

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-direct {v0, v2, v3, v1}, Lsun/misc/FloatingDecimal$PreparedASCIIToBinaryBuffer;-><init>(DF)V

    sput-object v0, Lsun/misc/FloatingDecimal;->A2BC_NEGATIVE_INFINITY:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    .line 1027
    new-instance v0, Lsun/misc/FloatingDecimal$PreparedASCIIToBinaryBuffer;

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-direct {v0, v2, v3, v1}, Lsun/misc/FloatingDecimal$PreparedASCIIToBinaryBuffer;-><init>(DF)V

    sput-object v0, Lsun/misc/FloatingDecimal;->A2BC_NOT_A_NUMBER:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    .line 1028
    new-instance v0, Lsun/misc/FloatingDecimal$PreparedASCIIToBinaryBuffer;

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lsun/misc/FloatingDecimal$PreparedASCIIToBinaryBuffer;-><init>(DF)V

    sput-object v0, Lsun/misc/FloatingDecimal;->A2BC_POSITIVE_ZERO:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    .line 1029
    new-instance v0, Lsun/misc/FloatingDecimal$PreparedASCIIToBinaryBuffer;

    const-wide/high16 v2, -0x8000000000000000L

    const/high16 v1, -0x80000000

    invoke-direct {v0, v2, v3, v1}, Lsun/misc/FloatingDecimal$PreparedASCIIToBinaryBuffer;-><init>(DF)V

    sput-object v0, Lsun/misc/FloatingDecimal;->A2BC_NEGATIVE_ZERO:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendTo(DLjava/lang/Appendable;)V
    .registers 5
    .param p0, "d"    # D
    .param p2, "buf"    # Ljava/lang/Appendable;

    .prologue
    .line 89
    invoke-static {p0, p1}, Lsun/misc/FloatingDecimal;->getBinaryToASCIIConverter(D)Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    move-result-object v0

    invoke-interface {v0, p2}, Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;->appendTo(Ljava/lang/Appendable;)V

    .line 90
    return-void
.end method

.method public static appendTo(FLjava/lang/Appendable;)V
    .registers 3
    .param p0, "f"    # F
    .param p1, "buf"    # Ljava/lang/Appendable;

    .prologue
    .line 98
    invoke-static {p0}, Lsun/misc/FloatingDecimal;->getBinaryToASCIIConverter(F)Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    move-result-object v0

    invoke-interface {v0, p1}, Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;->appendTo(Ljava/lang/Appendable;)V

    .line 99
    return-void
.end method

.method private static getBinaryToASCIIBuffer()Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;
    .registers 1

    .prologue
    .line 986
    sget-object v0, Lsun/misc/FloatingDecimal;->threadLocalBinaryToASCIIBuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;

    return-object v0
.end method

.method public static getBinaryToASCIIConverter(D)Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;
    .registers 4
    .param p0, "d"    # D

    .prologue
    .line 1738
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lsun/misc/FloatingDecimal;->getBinaryToASCIIConverter(DZ)Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    move-result-object v0

    return-object v0
.end method

.method static getBinaryToASCIIConverter(DZ)Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;
    .registers 19
    .param p0, "d"    # D
    .param p2, "isCompatibleFormat"    # Z

    .prologue
    .line 1750
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v6

    .line 1751
    .local v6, "dBits":J
    const-wide/high16 v12, -0x8000000000000000L

    and-long/2addr v12, v6

    const-wide/16 v14, 0x0

    cmp-long v5, v12, v14

    if-eqz v5, :cond_2b

    const/4 v8, 0x1

    .line 1752
    .local v8, "isNegative":Z
    :goto_e
    const-wide v12, 0xfffffffffffffL

    and-long v2, v6, v12

    .line 1753
    .local v2, "fractBits":J
    const-wide/high16 v12, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v12, v6

    const/16 v5, 0x34

    shr-long/2addr v12, v5

    long-to-int v1, v12

    .line 1755
    .local v1, "binExp":I
    const/16 v5, 0x7ff

    if-ne v1, v5, :cond_33

    .line 1756
    const-wide/16 v12, 0x0

    cmp-long v5, v2, v12

    if-nez v5, :cond_30

    .line 1757
    if-eqz v8, :cond_2d

    sget-object v5, Lsun/misc/FloatingDecimal;->B2AC_NEGATIVE_INFINITY:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    :goto_2a
    return-object v5

    .line 1751
    .end local v1    # "binExp":I
    .end local v2    # "fractBits":J
    .end local v8    # "isNegative":Z
    :cond_2b
    const/4 v8, 0x0

    .restart local v8    # "isNegative":Z
    goto :goto_e

    .line 1757
    .restart local v1    # "binExp":I
    .restart local v2    # "fractBits":J
    :cond_2d
    sget-object v5, Lsun/misc/FloatingDecimal;->B2AC_POSITIVE_INFINITY:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    goto :goto_2a

    .line 1759
    :cond_30
    sget-object v5, Lsun/misc/FloatingDecimal;->B2AC_NOT_A_NUMBER:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    return-object v5

    .line 1767
    :cond_33
    if-nez v1, :cond_5d

    .line 1768
    const-wide/16 v12, 0x0

    cmp-long v5, v2, v12

    if-nez v5, :cond_43

    .line 1770
    if-eqz v8, :cond_40

    sget-object v5, Lsun/misc/FloatingDecimal;->B2AC_NEGATIVE_ZERO:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    :goto_3f
    return-object v5

    :cond_40
    sget-object v5, Lsun/misc/FloatingDecimal;->B2AC_POSITIVE_ZERO:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    goto :goto_3f

    .line 1772
    :cond_43
    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v9

    .line 1773
    .local v9, "leadingZeros":I
    add-int/lit8 v10, v9, -0xb

    .line 1774
    .local v10, "shift":I
    shl-long/2addr v2, v10

    .line 1775
    rsub-int/lit8 v1, v10, 0x1

    .line 1776
    rsub-int/lit8 v4, v9, 0x40

    .line 1781
    .end local v9    # "leadingZeros":I
    .end local v10    # "shift":I
    .local v4, "nSignificantBits":I
    :goto_4e
    add-int/lit16 v1, v1, -0x3ff

    .line 1782
    invoke-static {}, Lsun/misc/FloatingDecimal;->getBinaryToASCIIBuffer()Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;

    move-result-object v0

    .line 1783
    .local v0, "buf":Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;
    invoke-static {v0, v8}, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->-wrap1(Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;Z)V

    move/from16 v5, p2

    .line 1785
    invoke-static/range {v0 .. v5}, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->-wrap0(Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;IJIZ)V

    .line 1786
    return-object v0

    .line 1778
    .end local v0    # "buf":Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;
    .end local v4    # "nSignificantBits":I
    :cond_5d
    const-wide/high16 v12, 0x10000000000000L

    or-long/2addr v2, v12

    .line 1779
    const/16 v4, 0x35

    .restart local v4    # "nSignificantBits":I
    goto :goto_4e
.end method

.method private static getBinaryToASCIIConverter(F)Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;
    .registers 15
    .param p0, "f"    # F

    .prologue
    .line 1790
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    .line 1791
    .local v6, "fBits":I
    const/high16 v2, -0x80000000

    and-int/2addr v2, v6

    if-eqz v2, :cond_24

    const/4 v8, 0x1

    .line 1792
    .local v8, "isNegative":Z
    :goto_a
    const v2, 0x7fffff

    and-int v7, v6, v2

    .line 1793
    .local v7, "fractBits":I
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    and-int/2addr v2, v6

    shr-int/lit8 v1, v2, 0x17

    .line 1795
    .local v1, "binExp":I
    const/16 v2, 0xff

    if-ne v1, v2, :cond_2c

    .line 1796
    int-to-long v2, v7

    const-wide/16 v12, 0x0

    cmp-long v2, v2, v12

    if-nez v2, :cond_29

    .line 1797
    if-eqz v8, :cond_26

    sget-object v2, Lsun/misc/FloatingDecimal;->B2AC_NEGATIVE_INFINITY:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    :goto_23
    return-object v2

    .line 1791
    .end local v1    # "binExp":I
    .end local v7    # "fractBits":I
    .end local v8    # "isNegative":Z
    :cond_24
    const/4 v8, 0x0

    .restart local v8    # "isNegative":Z
    goto :goto_a

    .line 1797
    .restart local v1    # "binExp":I
    .restart local v7    # "fractBits":I
    :cond_26
    sget-object v2, Lsun/misc/FloatingDecimal;->B2AC_POSITIVE_INFINITY:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    goto :goto_23

    .line 1799
    :cond_29
    sget-object v2, Lsun/misc/FloatingDecimal;->B2AC_NOT_A_NUMBER:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    return-object v2

    .line 1807
    :cond_2c
    if-nez v1, :cond_55

    .line 1808
    if-nez v7, :cond_38

    .line 1810
    if-eqz v8, :cond_35

    sget-object v2, Lsun/misc/FloatingDecimal;->B2AC_NEGATIVE_ZERO:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    :goto_34
    return-object v2

    :cond_35
    sget-object v2, Lsun/misc/FloatingDecimal;->B2AC_POSITIVE_ZERO:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    goto :goto_34

    .line 1812
    :cond_38
    invoke-static {v7}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v9

    .line 1813
    .local v9, "leadingZeros":I
    add-int/lit8 v10, v9, -0x8

    .line 1814
    .local v10, "shift":I
    shl-int/2addr v7, v10

    .line 1815
    rsub-int/lit8 v1, v10, 0x1

    .line 1816
    rsub-int/lit8 v4, v9, 0x20

    .line 1821
    .end local v9    # "leadingZeros":I
    .end local v10    # "shift":I
    .local v4, "nSignificantBits":I
    :goto_43
    add-int/lit8 v1, v1, -0x7f

    .line 1822
    invoke-static {}, Lsun/misc/FloatingDecimal;->getBinaryToASCIIBuffer()Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;

    move-result-object v0

    .line 1823
    .local v0, "buf":Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;
    invoke-static {v0, v8}, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->-wrap1(Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;Z)V

    .line 1825
    int-to-long v2, v7

    const/16 v5, 0x1d

    shl-long/2addr v2, v5

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->-wrap0(Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;IJIZ)V

    .line 1826
    return-object v0

    .line 1818
    .end local v0    # "buf":Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;
    .end local v4    # "nSignificantBits":I
    :cond_55
    const/high16 v2, 0x800000

    or-int/2addr v7, v2

    .line 1819
    const/16 v4, 0x18

    .restart local v4    # "nSignificantBits":I
    goto :goto_43
.end method

.method static getHexDigit(Ljava/lang/String;I)I
    .registers 6
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "position"    # I

    .prologue
    const/16 v2, 0x10

    .line 2534
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 2535
    .local v0, "value":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_f

    if-lt v0, v2, :cond_2d

    .line 2536
    :cond_f
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected failure of digit conversion of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2537
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2536
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 2539
    :cond_2d
    return v0
.end method

.method public static parseDouble(Ljava/lang/String;)D
    .registers 3
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-static {p0}, Lsun/misc/FloatingDecimal;->readJavaFormatString(Ljava/lang/String;)Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    move-result-object v0

    invoke-interface {v0}, Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static parseFloat(Ljava/lang/String;)F
    .registers 2
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-static {p0}, Lsun/misc/FloatingDecimal;->readJavaFormatString(Ljava/lang/String;)Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    move-result-object v0

    invoke-interface {v0}, Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;->floatValue()F

    move-result v0

    return v0
.end method

.method static parseHexString(Ljava/lang/String;)Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;
    .registers 51
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 2067
    invoke-static {}, Lsun/misc/FloatingDecimal$HexFloatPattern;->-get0()Ljava/util/regex/Pattern;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v26

    .line 2068
    .local v26, "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v26 .. v26}, Ljava/util/regex/Matcher;->matches()Z

    move-result v41

    .line 2069
    .local v41, "validInput":Z
    if-nez v41, :cond_37

    .line 2071
    new-instance v46, Ljava/lang/NumberFormatException;

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "For input string: \""

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string/jumbo v48, "\""

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-direct/range {v46 .. v47}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v46

    .line 2097
    :cond_37
    const/16 v46, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    .line 2098
    .local v14, "group1":Ljava/lang/String;
    if-eqz v14, :cond_84

    const-string/jumbo v46, "-"

    move-object/from16 v0, v46

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    .line 2129
    :goto_4c
    const/16 v38, 0x0

    .line 2130
    .local v38, "significandString":Ljava/lang/String;
    const/16 v35, 0x0

    .line 2131
    .local v35, "signifLength":I
    const/4 v10, 0x0

    .line 2133
    .local v10, "exponentAdjust":I
    const/16 v25, 0x0

    .line 2136
    .local v25, "leftDigits":I
    const/16 v31, 0x0

    .line 2150
    .local v31, "rightDigits":I
    const/16 v46, 0x4

    move-object/from16 v0, v26

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    .local v15, "group4":Ljava/lang/String;
    if-eqz v15, :cond_87

    .line 2152
    invoke-static {v15}, Lsun/misc/FloatingDecimal;->stripLeadingZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 2153
    .local v38, "significandString":Ljava/lang/String;
    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->length()I

    move-result v25

    .line 2171
    :goto_69
    invoke-static/range {v38 .. v38}, Lsun/misc/FloatingDecimal;->stripLeadingZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 2172
    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->length()I

    move-result v35

    .line 2177
    const/16 v46, 0x1

    move/from16 v0, v25

    move/from16 v1, v46

    if-lt v0, v1, :cond_c6

    .line 2178
    add-int/lit8 v46, v25, -0x1

    mul-int/lit8 v10, v46, 0x4

    .line 2186
    :goto_7d
    if-nez v35, :cond_d0

    .line 2187
    if-eqz v21, :cond_cd

    sget-object v46, Lsun/misc/FloatingDecimal;->A2BC_NEGATIVE_ZERO:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    :goto_83
    return-object v46

    .line 2098
    .end local v10    # "exponentAdjust":I
    .end local v15    # "group4":Ljava/lang/String;
    .end local v25    # "leftDigits":I
    .end local v31    # "rightDigits":I
    .end local v35    # "signifLength":I
    .end local v38    # "significandString":Ljava/lang/String;
    :cond_84
    const/16 v21, 0x0

    .local v21, "isNegative":Z
    goto :goto_4c

    .line 2157
    .end local v21    # "isNegative":Z
    .restart local v10    # "exponentAdjust":I
    .restart local v15    # "group4":Ljava/lang/String;
    .restart local v25    # "leftDigits":I
    .restart local v31    # "rightDigits":I
    .restart local v35    # "signifLength":I
    .local v38, "significandString":Ljava/lang/String;
    :cond_87
    const/16 v46, 0x6

    move-object/from16 v0, v26

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lsun/misc/FloatingDecimal;->stripLeadingZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2158
    .local v16, "group6":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v25

    .line 2161
    const/16 v46, 0x7

    move-object/from16 v0, v26

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v17

    .line 2162
    .local v17, "group7":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v31

    .line 2166
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v16, :cond_b1

    const-string/jumbo v16, ""

    .end local v16    # "group6":Ljava/lang/String;
    :cond_b1
    move-object/from16 v0, v46

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    .local v38, "significandString":Ljava/lang/String;
    goto :goto_69

    .line 2180
    .end local v17    # "group7":Ljava/lang/String;
    :cond_c6
    sub-int v46, v31, v35

    add-int/lit8 v46, v46, 0x1

    mul-int/lit8 v10, v46, -0x4

    goto :goto_7d

    .line 2187
    :cond_cd
    sget-object v46, Lsun/misc/FloatingDecimal;->A2BC_POSITIVE_ZERO:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    goto :goto_83

    .line 2199
    :cond_d0
    const/16 v46, 0x8

    move-object/from16 v0, v26

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v18

    .line 2200
    .local v18, "group8":Ljava/lang/String;
    if-eqz v18, :cond_14c

    const-string/jumbo v46, "+"

    move-object/from16 v0, v18

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    .line 2203
    :goto_e7
    const/16 v46, 0x9

    :try_start_e9
    move-object/from16 v0, v26

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_f4
    .catch Ljava/lang/NumberFormatException; {:try_start_e9 .. :try_end_f4} :catch_14f

    move-result v46

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v42, v0

    .line 2226
    .local v42, "unsignedRawExponent":J
    if-eqz v30, :cond_162

    const-wide/16 v46, 0x1

    :goto_fe
    mul-long v32, v46, v42

    .line 2230
    .local v32, "rawExponent":J
    int-to-long v0, v10

    move-wide/from16 v46, v0

    add-long v8, v32, v46

    .line 2236
    .local v8, "exponent":J
    const/16 v34, 0x0

    .line 2237
    .local v34, "round":Z
    const/16 v39, 0x0

    .line 2238
    .local v39, "sticky":Z
    const/16 v27, 0x0

    .line 2239
    .local v27, "nextShift":I
    const-wide/16 v36, 0x0

    .line 2246
    .local v36, "significand":J
    const/16 v46, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v46

    invoke-static {v0, v1}, Lsun/misc/FloatingDecimal;->getHexDigit(Ljava/lang/String;I)I

    move-result v46

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v22, v0

    .line 2257
    .local v22, "leadingDigit":J
    const-wide/16 v46, 0x1

    cmp-long v46, v22, v46

    if-nez v46, :cond_165

    .line 2258
    const/16 v46, 0x34

    shl-long v46, v22, v46

    .line 2239
    const-wide/16 v48, 0x0

    .line 2258
    or-long v36, v48, v46

    .line 2259
    const/16 v27, 0x30

    .line 2295
    :goto_12c
    const/16 v19, 0x0

    .line 2296
    .local v19, "i":I
    const/16 v19, 0x1

    .line 2297
    :goto_130
    move/from16 v0, v19

    move/from16 v1, v35

    if-ge v0, v1, :cond_1ad

    if-ltz v27, :cond_1ad

    .line 2299
    move-object/from16 v0, v38

    move/from16 v1, v19

    invoke-static {v0, v1}, Lsun/misc/FloatingDecimal;->getHexDigit(Ljava/lang/String;I)I

    move-result v46

    move/from16 v0, v46

    int-to-long v6, v0

    .line 2300
    .local v6, "currentDigit":J
    shl-long v46, v6, v27

    or-long v36, v36, v46

    .line 2301
    add-int/lit8 v27, v27, -0x4

    .line 2298
    add-int/lit8 v19, v19, 0x1

    goto :goto_130

    .line 2200
    .end local v6    # "currentDigit":J
    .end local v8    # "exponent":J
    .end local v19    # "i":I
    .end local v22    # "leadingDigit":J
    .end local v27    # "nextShift":I
    .end local v32    # "rawExponent":J
    .end local v34    # "round":Z
    .end local v36    # "significand":J
    .end local v39    # "sticky":Z
    .end local v42    # "unsignedRawExponent":J
    :cond_14c
    const/16 v30, 0x1

    .local v30, "positiveExponent":Z
    goto :goto_e7

    .line 2205
    .end local v30    # "positiveExponent":Z
    :catch_14f
    move-exception v5

    .line 2219
    .local v5, "e":Ljava/lang/NumberFormatException;
    if-eqz v21, :cond_15a

    .line 2220
    if-eqz v30, :cond_157

    sget-object v46, Lsun/misc/FloatingDecimal;->A2BC_NEGATIVE_INFINITY:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    .line 2219
    :goto_156
    return-object v46

    .line 2220
    :cond_157
    sget-object v46, Lsun/misc/FloatingDecimal;->A2BC_NEGATIVE_ZERO:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    goto :goto_156

    .line 2221
    :cond_15a
    if-eqz v30, :cond_15f

    sget-object v46, Lsun/misc/FloatingDecimal;->A2BC_POSITIVE_INFINITY:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    goto :goto_156

    :cond_15f
    sget-object v46, Lsun/misc/FloatingDecimal;->A2BC_POSITIVE_ZERO:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    goto :goto_156

    .line 2226
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .restart local v42    # "unsignedRawExponent":J
    :cond_162
    const-wide/16 v46, -0x1

    goto :goto_fe

    .line 2261
    .restart local v8    # "exponent":J
    .restart local v22    # "leadingDigit":J
    .restart local v27    # "nextShift":I
    .restart local v32    # "rawExponent":J
    .restart local v34    # "round":Z
    .restart local v36    # "significand":J
    .restart local v39    # "sticky":Z
    :cond_165
    const-wide/16 v46, 0x3

    cmp-long v46, v22, v46

    if-gtz v46, :cond_17a

    .line 2262
    const/16 v46, 0x33

    shl-long v46, v22, v46

    .line 2239
    const-wide/16 v48, 0x0

    .line 2262
    or-long v36, v48, v46

    .line 2263
    const/16 v27, 0x2f

    .line 2264
    const-wide/16 v46, 0x1

    add-long v8, v8, v46

    goto :goto_12c

    .line 2265
    :cond_17a
    const-wide/16 v46, 0x7

    cmp-long v46, v22, v46

    if-gtz v46, :cond_18f

    .line 2266
    const/16 v46, 0x32

    shl-long v46, v22, v46

    .line 2239
    const-wide/16 v48, 0x0

    .line 2266
    or-long v36, v48, v46

    .line 2267
    const/16 v27, 0x2e

    .line 2268
    const-wide/16 v46, 0x2

    add-long v8, v8, v46

    goto :goto_12c

    .line 2269
    :cond_18f
    const-wide/16 v46, 0xf

    cmp-long v46, v22, v46

    if-gtz v46, :cond_1a4

    .line 2270
    const/16 v46, 0x31

    shl-long v46, v22, v46

    .line 2239
    const-wide/16 v48, 0x0

    .line 2270
    or-long v36, v48, v46

    .line 2271
    const/16 v27, 0x2d

    .line 2272
    const-wide/16 v46, 0x3

    add-long v8, v8, v46

    goto :goto_12c

    .line 2274
    :cond_1a4
    new-instance v46, Ljava/lang/AssertionError;

    const-string/jumbo v47, "Result from digit conversion too large!"

    invoke-direct/range {v46 .. v47}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v46

    .line 2309
    .restart local v19    # "i":I
    :cond_1ad
    move/from16 v0, v19

    move/from16 v1, v35

    if-ge v0, v1, :cond_27d

    .line 2310
    move-object/from16 v0, v38

    move/from16 v1, v19

    invoke-static {v0, v1}, Lsun/misc/FloatingDecimal;->getHexDigit(Ljava/lang/String;I)I

    move-result v46

    move/from16 v0, v46

    int-to-long v6, v0

    .line 2314
    .restart local v6    # "currentDigit":J
    packed-switch v27, :pswitch_data_41e

    .line 2347
    new-instance v46, Ljava/lang/AssertionError;

    const-string/jumbo v47, "Unexpected shift distance remainder."

    invoke-direct/range {v46 .. v47}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v46

    .line 2318
    :pswitch_1ca
    const-wide/16 v46, 0xe

    and-long v46, v46, v6

    const/16 v48, 0x1

    shr-long v46, v46, v48

    or-long v36, v36, v46

    .line 2319
    const-wide/16 v46, 0x1

    and-long v46, v46, v6

    const-wide/16 v48, 0x0

    cmp-long v46, v46, v48

    if-eqz v46, :cond_204

    const/16 v34, 0x1

    .line 2356
    :goto_1e0
    add-int/lit8 v19, v19, 0x1

    .line 2357
    :goto_1e2
    move/from16 v0, v19

    move/from16 v1, v35

    if-ge v0, v1, :cond_27d

    xor-int/lit8 v46, v39, 0x1

    if-eqz v46, :cond_27d

    .line 2358
    move-object/from16 v0, v38

    move/from16 v1, v19

    invoke-static {v0, v1}, Lsun/misc/FloatingDecimal;->getHexDigit(Ljava/lang/String;I)I

    move-result v46

    move/from16 v0, v46

    int-to-long v6, v0

    .line 2359
    if-nez v39, :cond_1ff

    const-wide/16 v46, 0x0

    cmp-long v46, v6, v46

    if-eqz v46, :cond_27a

    :cond_1ff
    const/16 v39, 0x1

    .line 2360
    :goto_201
    add-int/lit8 v19, v19, 0x1

    goto :goto_1e2

    .line 2319
    :cond_204
    const/16 v34, 0x0

    goto :goto_1e0

    .line 2325
    :pswitch_207
    const-wide/16 v46, 0xc

    and-long v46, v46, v6

    const/16 v48, 0x2

    shr-long v46, v46, v48

    or-long v36, v36, v46

    .line 2326
    const-wide/16 v46, 0x2

    and-long v46, v46, v6

    const-wide/16 v48, 0x0

    cmp-long v46, v46, v48

    if-eqz v46, :cond_22a

    const/16 v34, 0x1

    .line 2327
    :goto_21d
    const-wide/16 v46, 0x1

    and-long v46, v46, v6

    const-wide/16 v48, 0x0

    cmp-long v46, v46, v48

    if-eqz v46, :cond_22d

    const/16 v39, 0x1

    goto :goto_1e0

    .line 2326
    :cond_22a
    const/16 v34, 0x0

    goto :goto_21d

    .line 2327
    :cond_22d
    const/16 v39, 0x0

    goto :goto_1e0

    .line 2332
    :pswitch_230
    const-wide/16 v46, 0x8

    and-long v46, v46, v6

    const/16 v48, 0x3

    shr-long v46, v46, v48

    or-long v36, v36, v46

    .line 2334
    const-wide/16 v46, 0x4

    and-long v46, v46, v6

    const-wide/16 v48, 0x0

    cmp-long v46, v46, v48

    if-eqz v46, :cond_253

    const/16 v34, 0x1

    .line 2335
    :goto_246
    const-wide/16 v46, 0x3

    and-long v46, v46, v6

    const-wide/16 v48, 0x0

    cmp-long v46, v46, v48

    if-eqz v46, :cond_256

    const/16 v39, 0x1

    goto :goto_1e0

    .line 2334
    :cond_253
    const/16 v34, 0x0

    goto :goto_246

    .line 2335
    :cond_256
    const/16 v39, 0x0

    goto :goto_1e0

    .line 2341
    :pswitch_259
    const-wide/16 v46, 0x8

    and-long v46, v46, v6

    const-wide/16 v48, 0x0

    cmp-long v46, v46, v48

    if-eqz v46, :cond_273

    const/16 v34, 0x1

    .line 2343
    :goto_265
    const-wide/16 v46, 0x7

    and-long v46, v46, v6

    const-wide/16 v48, 0x0

    cmp-long v46, v46, v48

    if-eqz v46, :cond_276

    const/16 v39, 0x1

    goto/16 :goto_1e0

    .line 2341
    :cond_273
    const/16 v34, 0x0

    goto :goto_265

    .line 2343
    :cond_276
    const/16 v39, 0x0

    goto/16 :goto_1e0

    .line 2359
    :cond_27a
    const/16 v39, 0x0

    goto :goto_201

    .line 2368
    .end local v6    # "currentDigit":J
    :cond_27d
    if-eqz v21, :cond_2a0

    const/high16 v12, -0x80000000

    .line 2369
    .local v12, "floatBits":I
    :goto_281
    const-wide/16 v46, -0x7e

    cmp-long v46, v8, v46

    if-ltz v46, :cond_2e1

    .line 2370
    const-wide/16 v46, 0x7f

    cmp-long v46, v8, v46

    if-lez v46, :cond_2a2

    .line 2372
    const/high16 v46, 0x7f800000    # Float.POSITIVE_INFINITY

    or-int v12, v12, v46

    .line 2398
    :cond_291
    :goto_291
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    .line 2401
    .local v11, "fValue":F
    const-wide/16 v46, 0x3ff

    cmp-long v46, v8, v46

    if-lez v46, :cond_349

    .line 2403
    if-eqz v21, :cond_345

    sget-object v46, Lsun/misc/FloatingDecimal;->A2BC_NEGATIVE_INFINITY:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    :goto_29f
    return-object v46

    .line 2368
    .end local v11    # "fValue":F
    .end local v12    # "floatBits":I
    :cond_2a0
    const/4 v12, 0x0

    .restart local v12    # "floatBits":I
    goto :goto_281

    .line 2374
    :cond_2a2
    const/16 v40, 0x1c

    .line 2375
    .local v40, "threshShift":I
    const-wide/16 v46, 0x1

    .line 2374
    const/16 v48, 0x1c

    .line 2375
    shl-long v46, v46, v48

    const-wide/16 v48, 0x1

    sub-long v46, v46, v48

    and-long v46, v46, v36

    const-wide/16 v48, 0x0

    cmp-long v46, v46, v48

    if-nez v46, :cond_2df

    if-nez v34, :cond_2df

    move/from16 v13, v39

    .line 2374
    :goto_2ba
    const/16 v46, 0x1c

    .line 2376
    ushr-long v46, v36, v46

    move-wide/from16 v0, v46

    long-to-int v0, v0

    move/from16 v20, v0

    .line 2377
    .local v20, "iValue":I
    and-int/lit8 v46, v20, 0x3

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_2cf

    if-eqz v13, :cond_2d1

    .line 2378
    :cond_2cf
    add-int/lit8 v20, v20, 0x1

    .line 2380
    :cond_2d1
    long-to-int v0, v8

    move/from16 v46, v0

    add-int/lit8 v46, v46, 0x7e

    shl-int/lit8 v46, v46, 0x17

    shr-int/lit8 v47, v20, 0x1

    add-int v46, v46, v47

    or-int v12, v12, v46

    goto :goto_291

    .line 2375
    .end local v20    # "iValue":I
    :cond_2df
    const/4 v13, 0x1

    .local v13, "floatSticky":Z
    goto :goto_2ba

    .line 2383
    .end local v13    # "floatSticky":Z
    .end local v40    # "threshShift":I
    :cond_2e1
    const-wide/16 v46, -0x96

    cmp-long v46, v8, v46

    if-ltz v46, :cond_291

    .line 2387
    const-wide/16 v46, -0x62

    sub-long v46, v46, v8

    move-wide/from16 v0, v46

    long-to-int v0, v0

    move/from16 v40, v0

    .line 2388
    .restart local v40    # "threshShift":I
    sget-boolean v46, Lsun/misc/FloatingDecimal;->-assertionsDisabled:Z

    if-nez v46, :cond_302

    const/16 v46, 0x1d

    move/from16 v0, v40

    move/from16 v1, v46

    if-ge v0, v1, :cond_302

    new-instance v46, Ljava/lang/AssertionError;

    invoke-direct/range {v46 .. v46}, Ljava/lang/AssertionError;-><init>()V

    throw v46

    .line 2389
    :cond_302
    sget-boolean v46, Lsun/misc/FloatingDecimal;->-assertionsDisabled:Z

    if-nez v46, :cond_314

    const/16 v46, 0x35

    move/from16 v0, v40

    move/from16 v1, v46

    if-lt v0, v1, :cond_314

    new-instance v46, Ljava/lang/AssertionError;

    invoke-direct/range {v46 .. v46}, Ljava/lang/AssertionError;-><init>()V

    throw v46

    .line 2390
    :cond_314
    const-wide/16 v46, 0x1

    shl-long v46, v46, v40

    const-wide/16 v48, 0x1

    sub-long v46, v46, v48

    and-long v46, v46, v36

    const-wide/16 v48, 0x0

    cmp-long v46, v46, v48

    if-nez v46, :cond_343

    if-nez v34, :cond_343

    move/from16 v13, v39

    .line 2391
    :goto_328
    ushr-long v46, v36, v40

    move-wide/from16 v0, v46

    long-to-int v0, v0

    move/from16 v20, v0

    .line 2392
    .restart local v20    # "iValue":I
    and-int/lit8 v46, v20, 0x3

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_33b

    if-eqz v13, :cond_33d

    .line 2393
    :cond_33b
    add-int/lit8 v20, v20, 0x1

    .line 2395
    :cond_33d
    shr-int/lit8 v46, v20, 0x1

    or-int v12, v12, v46

    goto/16 :goto_291

    .line 2390
    .end local v20    # "iValue":I
    :cond_343
    const/4 v13, 0x1

    .restart local v13    # "floatSticky":Z
    goto :goto_328

    .line 2403
    .end local v13    # "floatSticky":Z
    .end local v40    # "threshShift":I
    .restart local v11    # "fValue":F
    :cond_345
    sget-object v46, Lsun/misc/FloatingDecimal;->A2BC_POSITIVE_INFINITY:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    goto/16 :goto_29f

    .line 2405
    :cond_349
    const-wide/16 v46, 0x3ff

    cmp-long v46, v8, v46

    if-gtz v46, :cond_398

    .line 2406
    const-wide/16 v46, -0x3fe

    cmp-long v46, v8, v46

    if-ltz v46, :cond_398

    .line 2420
    const-wide/16 v46, 0x3ff

    .line 2419
    add-long v46, v46, v8

    .line 2421
    const/16 v48, 0x34

    .line 2419
    shl-long v46, v46, v48

    .line 2422
    const-wide/high16 v48, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 2419
    and-long v46, v46, v48

    .line 2423
    const-wide v48, 0xfffffffffffffL

    and-long v48, v48, v36

    .line 2419
    or-long v36, v46, v48

    .line 2498
    .end local v39    # "sticky":Z
    :goto_36a
    const-wide/16 v46, 0x1

    and-long v46, v46, v36

    const-wide/16 v48, 0x0

    cmp-long v46, v46, v48

    if-nez v46, :cond_414

    const/16 v24, 0x1

    .line 2499
    .local v24, "leastZero":Z
    :goto_376
    if-eqz v24, :cond_37c

    if-eqz v34, :cond_37c

    if-nez v39, :cond_380

    .line 2500
    :cond_37c
    if-nez v24, :cond_384

    .line 2499
    if-eqz v34, :cond_384

    .line 2501
    :cond_380
    const-wide/16 v46, 0x1

    add-long v36, v36, v46

    .line 2504
    :cond_384
    if-eqz v21, :cond_418

    .line 2505
    const-wide/high16 v46, -0x8000000000000000L

    or-long v46, v46, v36

    invoke-static/range {v46 .. v47}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v44

    .line 2508
    .local v44, "value":D
    :goto_38e
    new-instance v46, Lsun/misc/FloatingDecimal$PreparedASCIIToBinaryBuffer;

    move-object/from16 v0, v46

    move-wide/from16 v1, v44

    invoke-direct {v0, v1, v2, v11}, Lsun/misc/FloatingDecimal$PreparedASCIIToBinaryBuffer;-><init>(DF)V

    return-object v46

    .line 2428
    .end local v24    # "leastZero":Z
    .end local v44    # "value":D
    .restart local v39    # "sticky":Z
    :cond_398
    const-wide/16 v46, -0x433

    cmp-long v46, v8, v46

    if-gez v46, :cond_3a6

    .line 2432
    if-eqz v21, :cond_3a3

    sget-object v46, Lsun/misc/FloatingDecimal;->A2BC_NEGATIVE_ZERO:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    :goto_3a2
    return-object v46

    :cond_3a3
    sget-object v46, Lsun/misc/FloatingDecimal;->A2BC_POSITIVE_ZERO:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    goto :goto_3a2

    .line 2440
    :cond_3a6
    if-nez v39, :cond_3cf

    move/from16 v39, v34

    .line 2441
    .end local v39    # "sticky":Z
    :goto_3aa
    const/16 v34, 0x0

    .line 2450
    long-to-int v0, v8

    move/from16 v46, v0

    move/from16 v0, v46

    add-int/lit16 v0, v0, 0x432

    move/from16 v46, v0

    add-int/lit8 v46, v46, 0x1

    .line 2449
    rsub-int/lit8 v4, v46, 0x35

    .line 2451
    .local v4, "bitsDiscarded":I
    sget-boolean v46, Lsun/misc/FloatingDecimal;->-assertionsDisabled:Z

    if-nez v46, :cond_3d2

    const/16 v46, 0x1

    move/from16 v0, v46

    if-lt v4, v0, :cond_3c9

    const/16 v46, 0x35

    move/from16 v0, v46

    if-le v4, v0, :cond_3d2

    :cond_3c9
    new-instance v46, Ljava/lang/AssertionError;

    invoke-direct/range {v46 .. v46}, Ljava/lang/AssertionError;-><init>()V

    throw v46

    .line 2440
    .end local v4    # "bitsDiscarded":I
    .restart local v39    # "sticky":Z
    :cond_3cf
    const/16 v39, 0x1

    goto :goto_3aa

    .line 2455
    .end local v39    # "sticky":Z
    .restart local v4    # "bitsDiscarded":I
    :cond_3d2
    add-int/lit8 v46, v4, -0x1

    const-wide/16 v48, 0x1

    shl-long v46, v48, v46

    and-long v46, v46, v36

    const-wide/16 v48, 0x0

    cmp-long v46, v46, v48

    if-eqz v46, :cond_40e

    const/16 v34, 0x1

    .line 2456
    :goto_3e2
    const/16 v46, 0x1

    move/from16 v0, v46

    if-le v4, v0, :cond_3ff

    .line 2459
    add-int/lit8 v46, v4, -0x1

    const-wide/16 v48, -0x1

    shl-long v46, v48, v46

    move-wide/from16 v0, v46

    not-long v0, v0

    move-wide/from16 v28, v0

    .line 2460
    .local v28, "mask":J
    if-nez v39, :cond_3fd

    and-long v46, v36, v28

    const-wide/16 v48, 0x0

    cmp-long v46, v46, v48

    if-eqz v46, :cond_411

    :cond_3fd
    const/16 v39, 0x1

    .line 2464
    .end local v28    # "mask":J
    :cond_3ff
    :goto_3ff
    shr-long v36, v36, v4

    .line 2470
    const-wide v46, 0xfffffffffffffL

    and-long v46, v46, v36

    .line 2466
    const-wide/16 v48, 0x0

    or-long v36, v48, v46

    goto/16 :goto_36a

    .line 2455
    :cond_40e
    const/16 v34, 0x0

    goto :goto_3e2

    .line 2460
    .restart local v28    # "mask":J
    :cond_411
    const/16 v39, 0x0

    .restart local v39    # "sticky":Z
    goto :goto_3ff

    .line 2498
    .end local v4    # "bitsDiscarded":I
    .end local v28    # "mask":J
    .end local v39    # "sticky":Z
    :cond_414
    const/16 v24, 0x0

    .restart local v24    # "leastZero":Z
    goto/16 :goto_376

    .line 2506
    :cond_418
    invoke-static/range {v36 .. v37}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v44

    .restart local v44    # "value":D
    goto/16 :goto_38e

    .line 2314
    :pswitch_data_41e
    .packed-switch -0x4
        :pswitch_259
        :pswitch_230
        :pswitch_207
        :pswitch_1ca
    .end packed-switch
.end method

.method static readJavaFormatString(Ljava/lang/String;)Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;
    .registers 30
    .param p0, "in"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 1831
    const/16 v17, 0x0

    .line 1832
    .local v17, "isNegative":Z
    const/16 v25, 0x0

    .line 1838
    .local v25, "signSeen":Z
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1840
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v19

    .line 1841
    .local v19, "len":I
    if-nez v19, :cond_3d

    .line 1842
    new-instance v26, Ljava/lang/NumberFormatException;

    const-string/jumbo v27, "empty String"

    invoke-direct/range {v26 .. v27}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v26
    :try_end_17
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_4 .. :try_end_17} :catch_17

    .line 2042
    .end local v19    # "len":I
    :catch_17
    move-exception v9

    .line 2043
    :cond_18
    new-instance v26, Ljava/lang/NumberFormatException;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "For input string: \""

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "\""

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 1844
    .restart local v19    # "len":I
    :cond_3d
    const/4 v15, 0x0

    .line 1845
    .local v15, "i":I
    :try_start_3e
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v26

    packed-switch v26, :pswitch_data_22e

    .line 1853
    :goto_47
    :pswitch_47
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1854
    .local v3, "c":C
    const/16 v26, 0x4e

    move/from16 v0, v26

    if-ne v3, v0, :cond_75

    .line 1855
    sub-int v26, v19, v15

    sget v27, Lsun/misc/FloatingDecimal;->NAN_LENGTH:I

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_18

    const-string/jumbo v26, "NaN"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v26

    move/from16 v0, v26

    if-ne v0, v15, :cond_18

    .line 1856
    sget-object v26, Lsun/misc/FloatingDecimal;->A2BC_NOT_A_NUMBER:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    return-object v26

    .line 1847
    .end local v3    # "c":C
    :pswitch_6f
    const/16 v17, 0x1

    .line 1850
    :pswitch_71
    const/4 v15, 0x1

    .line 1851
    const/16 v25, 0x1

    goto :goto_47

    .line 1860
    .restart local v3    # "c":C
    :cond_75
    const/16 v26, 0x49

    move/from16 v0, v26

    if-ne v3, v0, :cond_9c

    .line 1861
    sub-int v26, v19, v15

    sget v27, Lsun/misc/FloatingDecimal;->INFINITY_LENGTH:I

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_18

    const-string/jumbo v26, "Infinity"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v26

    move/from16 v0, v26

    if-ne v0, v15, :cond_18

    .line 1862
    if-eqz v17, :cond_99

    sget-object v26, Lsun/misc/FloatingDecimal;->A2BC_NEGATIVE_INFINITY:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    :goto_98
    return-object v26

    :cond_99
    sget-object v26, Lsun/misc/FloatingDecimal;->A2BC_POSITIVE_INFINITY:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    goto :goto_98

    .line 1866
    :cond_9c
    const/16 v26, 0x30

    move/from16 v0, v26

    if-ne v3, v0, :cond_c5

    .line 1867
    add-int/lit8 v26, v15, 0x1

    move/from16 v0, v19

    move/from16 v1, v26

    if-le v0, v1, :cond_c5

    .line 1868
    add-int/lit8 v26, v15, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1869
    .local v4, "ch":C
    const/16 v26, 0x78

    move/from16 v0, v26

    if-eq v4, v0, :cond_c0

    const/16 v26, 0x58

    move/from16 v0, v26

    if-ne v4, v0, :cond_c5

    .line 1870
    :cond_c0
    invoke-static/range {p0 .. p0}, Lsun/misc/FloatingDecimal;->parseHexString(Ljava/lang/String;)Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    move-result-object v26

    return-object v26

    .line 1875
    .end local v4    # "ch":C
    :cond_c5
    move/from16 v0, v19

    new-array v8, v0, [C

    .line 1876
    .local v8, "digits":[C
    const/16 v20, 0x0

    .line 1877
    .local v20, "nDigits":I
    const/4 v7, 0x0

    .line 1878
    .local v7, "decSeen":Z
    const/4 v6, 0x0

    .line 1879
    .local v6, "decPt":I
    const/16 v22, 0x0

    .line 1880
    .local v22, "nLeadZero":I
    const/16 v23, 0x0

    .line 1883
    .local v23, "nTrailZero":I
    :goto_d1
    move/from16 v0, v19

    if-ge v15, v0, :cond_229

    .line 1884
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1885
    const/16 v26, 0x30

    move/from16 v0, v26

    if-ne v3, v0, :cond_e6

    .line 1886
    add-int/lit8 v22, v22, 0x1

    .line 1900
    :goto_e3
    add-int/lit8 v15, v15, 0x1

    goto :goto_d1

    .line 1887
    :cond_e6
    const/16 v26, 0x2e

    move/from16 v0, v26

    if-ne v3, v0, :cond_fe

    .line 1888
    if-eqz v7, :cond_f7

    .line 1890
    new-instance v26, Ljava/lang/NumberFormatException;

    const-string/jumbo v27, "multiple points"

    invoke-direct/range {v26 .. v27}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 1892
    :cond_f7
    move v6, v15

    .line 1893
    if-eqz v25, :cond_fc

    .line 1894
    add-int/lit8 v6, v6, -0x1

    .line 1896
    :cond_fc
    const/4 v7, 0x1

    goto :goto_e3

    :cond_fe
    move/from16 v21, v20

    .line 1903
    .end local v20    # "nDigits":I
    .local v21, "nDigits":I
    :goto_100
    move/from16 v0, v19

    if-ge v15, v0, :cond_148

    .line 1904
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1905
    const/16 v26, 0x31

    move/from16 v0, v26

    if-lt v3, v0, :cond_121

    const/16 v26, 0x39

    move/from16 v0, v26

    if-gt v3, v0, :cond_121

    .line 1906
    add-int/lit8 v20, v21, 0x1

    .end local v21    # "nDigits":I
    .restart local v20    # "nDigits":I
    aput-char v3, v8, v21

    .line 1907
    const/16 v23, 0x0

    .line 1924
    :goto_11c
    add-int/lit8 v15, v15, 0x1

    move/from16 v21, v20

    .end local v20    # "nDigits":I
    .restart local v21    # "nDigits":I
    goto :goto_100

    .line 1908
    :cond_121
    const/16 v26, 0x30

    move/from16 v0, v26

    if-ne v3, v0, :cond_12e

    .line 1909
    add-int/lit8 v20, v21, 0x1

    .end local v21    # "nDigits":I
    .restart local v20    # "nDigits":I
    aput-char v3, v8, v21

    .line 1910
    add-int/lit8 v23, v23, 0x1

    goto :goto_11c

    .line 1911
    .end local v20    # "nDigits":I
    .restart local v21    # "nDigits":I
    :cond_12e
    const/16 v26, 0x2e

    move/from16 v0, v26

    if-ne v3, v0, :cond_148

    .line 1912
    if-eqz v7, :cond_13f

    .line 1914
    new-instance v26, Ljava/lang/NumberFormatException;

    const-string/jumbo v27, "multiple points"

    invoke-direct/range {v26 .. v27}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 1916
    :cond_13f
    move v6, v15

    .line 1917
    if-eqz v25, :cond_144

    .line 1918
    add-int/lit8 v6, v6, -0x1

    .line 1920
    :cond_144
    const/4 v7, 0x1

    move/from16 v20, v21

    .end local v21    # "nDigits":I
    .restart local v20    # "nDigits":I
    goto :goto_11c

    .line 1926
    .end local v20    # "nDigits":I
    .restart local v21    # "nDigits":I
    :cond_148
    sub-int v20, v21, v23

    .line 1946
    .end local v21    # "nDigits":I
    .restart local v20    # "nDigits":I
    if-nez v20, :cond_1ad

    const/16 v18, 0x1

    .line 1947
    .local v18, "isZero":Z
    :goto_14e
    if-eqz v18, :cond_152

    if-eqz v22, :cond_18

    .line 1958
    :cond_152
    if-eqz v7, :cond_1b0

    .line 1959
    sub-int v5, v6, v22

    .line 1967
    .local v5, "decExp":I
    :goto_156
    move/from16 v0, v19

    if-ge v15, v0, :cond_1c9

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v26, 0x65

    move/from16 v0, v26

    if-eq v3, v0, :cond_16c

    const/16 v26, 0x45

    move/from16 v0, v26

    if-ne v3, v0, :cond_1c9

    .line 1968
    :cond_16c
    const/4 v13, 0x1

    .line 1969
    .local v13, "expSign":I
    const/4 v14, 0x0

    .line 1970
    .local v14, "expVal":I
    const v24, 0xccccccc

    .line 1971
    .local v24, "reallyBig":I
    const/4 v12, 0x0

    .line 1972
    .local v12, "expOverflow":Z
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v26

    packed-switch v26, :pswitch_data_238

    .line 1979
    :goto_17d
    :pswitch_17d
    move v10, v15

    .local v10, "expAt":I
    move/from16 v16, v15

    .line 1981
    .end local v15    # "i":I
    .local v16, "i":I
    :goto_180
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_226

    .line 1970
    const v26, 0xccccccc

    .line 1982
    move/from16 v0, v26

    if-lt v14, v0, :cond_18e

    .line 1985
    const/4 v12, 0x1

    .line 1987
    :cond_18e
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "i":I
    .restart local v15    # "i":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1988
    const/16 v26, 0x30

    move/from16 v0, v26

    if-lt v3, v0, :cond_1b7

    const/16 v26, 0x39

    move/from16 v0, v26

    if-gt v3, v0, :cond_1b7

    .line 1989
    mul-int/lit8 v26, v14, 0xa

    add-int/lit8 v27, v3, -0x30

    add-int v14, v26, v27

    move/from16 v16, v15

    .end local v15    # "i":I
    .restart local v16    # "i":I
    goto :goto_180

    .line 1946
    .end local v5    # "decExp":I
    .end local v10    # "expAt":I
    .end local v12    # "expOverflow":Z
    .end local v13    # "expSign":I
    .end local v14    # "expVal":I
    .end local v16    # "i":I
    .end local v18    # "isZero":Z
    .end local v24    # "reallyBig":I
    .restart local v15    # "i":I
    :cond_1ad
    const/16 v18, 0x0

    .restart local v18    # "isZero":Z
    goto :goto_14e

    .line 1961
    :cond_1b0
    add-int v5, v20, v23

    .restart local v5    # "decExp":I
    goto :goto_156

    .line 1974
    .restart local v12    # "expOverflow":Z
    .restart local v13    # "expSign":I
    .restart local v14    # "expVal":I
    .restart local v24    # "reallyBig":I
    :pswitch_1b3
    const/4 v13, -0x1

    .line 1977
    :pswitch_1b4
    add-int/lit8 v15, v15, 0x1

    goto :goto_17d

    .line 1991
    .restart local v10    # "expAt":I
    :cond_1b7
    add-int/lit8 v15, v15, -0x1

    .line 1995
    :goto_1b9
    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x144

    move/from16 v26, v0

    add-int v11, v26, v23

    .line 1996
    .local v11, "expLimit":I
    if-nez v12, :cond_1c5

    if-le v14, v11, :cond_212

    .line 2009
    :cond_1c5
    mul-int v5, v13, v11

    .line 2022
    :goto_1c7
    if-eq v15, v10, :cond_18

    .line 2030
    .end local v10    # "expAt":I
    .end local v11    # "expLimit":I
    .end local v12    # "expOverflow":Z
    .end local v13    # "expSign":I
    .end local v14    # "expVal":I
    .end local v24    # "reallyBig":I
    :cond_1c9
    move/from16 v0, v19

    if-ge v15, v0, :cond_20b

    .line 2031
    add-int/lit8 v26, v19, -0x1

    move/from16 v0, v26

    if-ne v15, v0, :cond_18

    .line 2032
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v26

    const/16 v27, 0x66

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_20b

    .line 2033
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v26

    const/16 v27, 0x46

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_20b

    .line 2034
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v26

    const/16 v27, 0x64

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_20b

    .line 2035
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v26

    const/16 v27, 0x44

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_18

    .line 2038
    :cond_20b
    if-eqz v18, :cond_21a

    .line 2039
    if-eqz v17, :cond_217

    sget-object v26, Lsun/misc/FloatingDecimal;->A2BC_NEGATIVE_ZERO:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    :goto_211
    return-object v26

    .line 2013
    .restart local v10    # "expAt":I
    .restart local v11    # "expLimit":I
    .restart local v12    # "expOverflow":Z
    .restart local v13    # "expSign":I
    .restart local v14    # "expVal":I
    .restart local v24    # "reallyBig":I
    :cond_212
    mul-int v26, v13, v14

    add-int v5, v5, v26

    goto :goto_1c7

    .line 2039
    .end local v10    # "expAt":I
    .end local v11    # "expLimit":I
    .end local v12    # "expOverflow":Z
    .end local v13    # "expSign":I
    .end local v14    # "expVal":I
    .end local v24    # "reallyBig":I
    :cond_217
    sget-object v26, Lsun/misc/FloatingDecimal;->A2BC_POSITIVE_ZERO:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    goto :goto_211

    .line 2041
    :cond_21a
    new-instance v26, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;

    move-object/from16 v0, v26

    move/from16 v1, v17

    move/from16 v2, v20

    invoke-direct {v0, v1, v5, v8, v2}, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;-><init>(ZI[CI)V
    :try_end_225
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_3e .. :try_end_225} :catch_17

    return-object v26

    .end local v15    # "i":I
    .restart local v10    # "expAt":I
    .restart local v12    # "expOverflow":Z
    .restart local v13    # "expSign":I
    .restart local v14    # "expVal":I
    .restart local v16    # "i":I
    .restart local v24    # "reallyBig":I
    :cond_226
    move/from16 v15, v16

    .end local v16    # "i":I
    .restart local v15    # "i":I
    goto :goto_1b9

    .end local v5    # "decExp":I
    .end local v10    # "expAt":I
    .end local v12    # "expOverflow":Z
    .end local v13    # "expSign":I
    .end local v14    # "expVal":I
    .end local v18    # "isZero":Z
    .end local v24    # "reallyBig":I
    :cond_229
    move/from16 v21, v20

    .end local v20    # "nDigits":I
    .restart local v21    # "nDigits":I
    goto/16 :goto_100

    .line 1845
    nop

    :pswitch_data_22e
    .packed-switch 0x2b
        :pswitch_71
        :pswitch_47
        :pswitch_6f
    .end packed-switch

    .line 1972
    :pswitch_data_238
    .packed-switch 0x2b
        :pswitch_1b4
        :pswitch_17d
        :pswitch_1b3
    .end packed-switch
.end method

.method static stripLeadingZeros(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x30

    .line 2518
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_28

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_28

    .line 2519
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 2520
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_21

    .line 2521
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2519
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 2524
    :cond_24
    const-string/jumbo v1, ""

    return-object v1

    .line 2526
    .end local v0    # "i":I
    :cond_28
    return-object p0
.end method

.method public static toJavaFormatString(D)Ljava/lang/String;
    .registers 4
    .param p0, "d"    # D

    .prologue
    .line 70
    invoke-static {p0, p1}, Lsun/misc/FloatingDecimal;->getBinaryToASCIIConverter(D)Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    move-result-object v0

    invoke-interface {v0}, Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;->toJavaFormatString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toJavaFormatString(F)Ljava/lang/String;
    .registers 2
    .param p0, "f"    # F

    .prologue
    .line 80
    invoke-static {p0}, Lsun/misc/FloatingDecimal;->getBinaryToASCIIConverter(F)Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    move-result-object v0

    invoke-interface {v0}, Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;->toJavaFormatString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
