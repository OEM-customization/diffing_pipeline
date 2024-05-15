.class public Lsun/misc/FloatingDecimal;
.super Ljava/lang/Object;
.source "FloatingDecimal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/misc/FloatingDecimal$HexFloatPattern;,
        Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;,
        Lsun/misc/FloatingDecimal$PreparedASCIIToBinaryBuffer;,
        Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;,
        Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;,
        Lsun/misc/FloatingDecimal$ExceptionalBinaryToASCIIBuffer;,
        Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;
    }
.end annotation


# static fields
.field static final synthetic greylist $assertionsDisabled:Z = false

.field static final blacklist A2BC_NEGATIVE_INFINITY:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

.field static final blacklist A2BC_NEGATIVE_ZERO:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

.field static final blacklist A2BC_NOT_A_NUMBER:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

.field static final blacklist A2BC_POSITIVE_INFINITY:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

.field static final blacklist A2BC_POSITIVE_ZERO:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

.field private static final blacklist B2AC_NEGATIVE_INFINITY:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

.field private static final blacklist B2AC_NEGATIVE_ZERO:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

.field private static final blacklist B2AC_NOT_A_NUMBER:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

.field private static final blacklist B2AC_POSITIVE_INFINITY:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

.field private static final blacklist B2AC_POSITIVE_ZERO:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

.field static final blacklist BIG_DECIMAL_EXPONENT:I = 0x144

.field static final blacklist EXP_ONE:J = 0x3ff0000000000000L

.field static final blacklist EXP_SHIFT:I = 0x34

.field static final blacklist FRACT_HOB:J = 0x10000000000000L

.field private static final blacklist INFINITY_LENGTH:I

.field private static final blacklist INFINITY_REP:Ljava/lang/String; = "Infinity"

.field static final blacklist INT_DECIMAL_DIGITS:I = 0x9

.field static final blacklist MAX_DECIMAL_DIGITS:I = 0xf

.field static final blacklist MAX_DECIMAL_EXPONENT:I = 0x134

.field static final blacklist MAX_NDIGITS:I = 0x44c

.field static final blacklist MAX_SMALL_BIN_EXP:I = 0x3e

.field static final blacklist MIN_DECIMAL_EXPONENT:I = -0x144

.field static final blacklist MIN_SMALL_BIN_EXP:I = -0x15

.field private static final blacklist NAN_LENGTH:I

.field private static final blacklist NAN_REP:Ljava/lang/String; = "NaN"

.field static final blacklist SINGLE_EXP_SHIFT:I = 0x17

.field static final blacklist SINGLE_FRACT_HOB:I = 0x800000

.field static final blacklist SINGLE_MAX_DECIMAL_DIGITS:I = 0x7

.field static final blacklist SINGLE_MAX_DECIMAL_EXPONENT:I = 0x26

.field static final blacklist SINGLE_MAX_NDIGITS:I = 0xc8

.field static final blacklist SINGLE_MIN_DECIMAL_EXPONENT:I = -0x2d

.field private static final blacklist threadLocalBinaryToASCIIBuffer:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 37
    nop

    .line 246
    const-string v0, "Infinity"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sput v1, Lsun/misc/FloatingDecimal;->INFINITY_LENGTH:I

    .line 248
    const-string v1, "NaN"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sput v2, Lsun/misc/FloatingDecimal;->NAN_LENGTH:I

    .line 250
    new-instance v2, Lsun/misc/FloatingDecimal$ExceptionalBinaryToASCIIBuffer;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lsun/misc/FloatingDecimal$ExceptionalBinaryToASCIIBuffer;-><init>(Ljava/lang/String;Z)V

    sput-object v2, Lsun/misc/FloatingDecimal;->B2AC_POSITIVE_INFINITY:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    .line 251
    new-instance v0, Lsun/misc/FloatingDecimal$ExceptionalBinaryToASCIIBuffer;

    const-string v2, "-Infinity"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4}, Lsun/misc/FloatingDecimal$ExceptionalBinaryToASCIIBuffer;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lsun/misc/FloatingDecimal;->B2AC_NEGATIVE_INFINITY:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    .line 252
    new-instance v0, Lsun/misc/FloatingDecimal$ExceptionalBinaryToASCIIBuffer;

    invoke-direct {v0, v1, v3}, Lsun/misc/FloatingDecimal$ExceptionalBinaryToASCIIBuffer;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lsun/misc/FloatingDecimal;->B2AC_NOT_A_NUMBER:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    .line 253
    new-instance v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;

    new-array v1, v4, [C

    const/16 v2, 0x30

    aput-char v2, v1, v3

    invoke-direct {v0, v3, v1}, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;-><init>(Z[C)V

    sput-object v0, Lsun/misc/FloatingDecimal;->B2AC_POSITIVE_ZERO:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    .line 254
    new-instance v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;

    new-array v1, v4, [C

    aput-char v2, v1, v3

    invoke-direct {v0, v4, v1}, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;-><init>(Z[C)V

    sput-object v0, Lsun/misc/FloatingDecimal;->B2AC_NEGATIVE_ZERO:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    .line 977
    new-instance v0, Lsun/misc/FloatingDecimal$1;

    invoke-direct {v0}, Lsun/misc/FloatingDecimal$1;-><init>()V

    sput-object v0, Lsun/misc/FloatingDecimal;->threadLocalBinaryToASCIIBuffer:Ljava/lang/ThreadLocal;

    .line 1025
    new-instance v0, Lsun/misc/FloatingDecimal$PreparedASCIIToBinaryBuffer;

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-direct {v0, v1, v2, v3}, Lsun/misc/FloatingDecimal$PreparedASCIIToBinaryBuffer;-><init>(DF)V

    sput-object v0, Lsun/misc/FloatingDecimal;->A2BC_POSITIVE_INFINITY:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    .line 1026
    new-instance v0, Lsun/misc/FloatingDecimal$PreparedASCIIToBinaryBuffer;

    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-direct {v0, v1, v2, v3}, Lsun/misc/FloatingDecimal$PreparedASCIIToBinaryBuffer;-><init>(DF)V

    sput-object v0, Lsun/misc/FloatingDecimal;->A2BC_NEGATIVE_INFINITY:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    .line 1027
    new-instance v0, Lsun/misc/FloatingDecimal$PreparedASCIIToBinaryBuffer;

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    const/high16 v3, 0x7fc00000    # Float.NaN

    invoke-direct {v0, v1, v2, v3}, Lsun/misc/FloatingDecimal$PreparedASCIIToBinaryBuffer;-><init>(DF)V

    sput-object v0, Lsun/misc/FloatingDecimal;->A2BC_NOT_A_NUMBER:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    .line 1028
    new-instance v0, Lsun/misc/FloatingDecimal$PreparedASCIIToBinaryBuffer;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lsun/misc/FloatingDecimal$PreparedASCIIToBinaryBuffer;-><init>(DF)V

    sput-object v0, Lsun/misc/FloatingDecimal;->A2BC_POSITIVE_ZERO:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    .line 1029
    new-instance v0, Lsun/misc/FloatingDecimal$PreparedASCIIToBinaryBuffer;

    const-wide/high16 v1, -0x8000000000000000L

    const/high16 v3, -0x80000000

    invoke-direct {v0, v1, v2, v3}, Lsun/misc/FloatingDecimal$PreparedASCIIToBinaryBuffer;-><init>(DF)V

    sput-object v0, Lsun/misc/FloatingDecimal;->A2BC_NEGATIVE_ZERO:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist appendTo(DLjava/lang/Appendable;)V
    .registers 4
    .param p0, "d"    # D
    .param p2, "buf"    # Ljava/lang/Appendable;

    .line 89
    invoke-static {p0, p1}, Lsun/misc/FloatingDecimal;->getBinaryToASCIIConverter(D)Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    move-result-object v0

    invoke-interface {v0, p2}, Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;->appendTo(Ljava/lang/Appendable;)V

    .line 90
    return-void
.end method

.method public static blacklist appendTo(FLjava/lang/Appendable;)V
    .registers 3
    .param p0, "f"    # F
    .param p1, "buf"    # Ljava/lang/Appendable;

    .line 98
    invoke-static {p0}, Lsun/misc/FloatingDecimal;->getBinaryToASCIIConverter(F)Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    move-result-object v0

    invoke-interface {v0, p1}, Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;->appendTo(Ljava/lang/Appendable;)V

    .line 99
    return-void
.end method

.method private static blacklist getBinaryToASCIIBuffer()Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;
    .registers 1

    .line 986
    sget-object v0, Lsun/misc/FloatingDecimal;->threadLocalBinaryToASCIIBuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;

    return-object v0
.end method

.method public static blacklist getBinaryToASCIIConverter(D)Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;
    .registers 3
    .param p0, "d"    # D

    .line 1738
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lsun/misc/FloatingDecimal;->getBinaryToASCIIConverter(DZ)Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    move-result-object v0

    return-object v0
.end method

.method static blacklist getBinaryToASCIIConverter(DZ)Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;
    .registers 17
    .param p0, "d"    # D
    .param p2, "isCompatibleFormat"    # Z

    .line 1750
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 1751
    .local v0, "dBits":J
    const-wide/high16 v2, -0x8000000000000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    .line 1752
    .local v2, "isNegative":Z
    :goto_10
    const-wide v6, 0xfffffffffffffL

    and-long/2addr v6, v0

    .line 1753
    .local v6, "fractBits":J
    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v8, v0

    const/16 v3, 0x34

    shr-long/2addr v8, v3

    long-to-int v3, v8

    .line 1755
    .local v3, "binExp":I
    const/16 v8, 0x7ff

    if-ne v3, v8, :cond_30

    .line 1756
    cmp-long v4, v6, v4

    if-nez v4, :cond_2d

    .line 1757
    if-eqz v2, :cond_2a

    sget-object v4, Lsun/misc/FloatingDecimal;->B2AC_NEGATIVE_INFINITY:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    goto :goto_2c

    :cond_2a
    sget-object v4, Lsun/misc/FloatingDecimal;->B2AC_POSITIVE_INFINITY:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    :goto_2c
    return-object v4

    .line 1759
    :cond_2d
    sget-object v4, Lsun/misc/FloatingDecimal;->B2AC_NOT_A_NUMBER:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    return-object v4

    .line 1767
    :cond_30
    if-nez v3, :cond_4c

    .line 1768
    cmp-long v4, v6, v4

    if-nez v4, :cond_3e

    .line 1770
    if-eqz v2, :cond_3b

    sget-object v4, Lsun/misc/FloatingDecimal;->B2AC_NEGATIVE_ZERO:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    goto :goto_3d

    :cond_3b
    sget-object v4, Lsun/misc/FloatingDecimal;->B2AC_POSITIVE_ZERO:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    :goto_3d
    return-object v4

    .line 1772
    :cond_3e
    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v4

    .line 1773
    .local v4, "leadingZeros":I
    add-int/lit8 v5, v4, -0xb

    .line 1774
    .local v5, "shift":I
    shl-long/2addr v6, v5

    .line 1775
    rsub-int/lit8 v3, v5, 0x1

    .line 1776
    rsub-int/lit8 v4, v4, 0x40

    .line 1777
    .end local v5    # "shift":I
    .local v4, "nSignificantBits":I
    move v10, v4

    move-wide v11, v6

    goto :goto_53

    .line 1778
    .end local v4    # "nSignificantBits":I
    :cond_4c
    const-wide/high16 v4, 0x10000000000000L

    or-long/2addr v6, v4

    .line 1779
    const/16 v4, 0x35

    move v10, v4

    move-wide v11, v6

    .line 1781
    .end local v6    # "fractBits":J
    .local v10, "nSignificantBits":I
    .local v11, "fractBits":J
    :goto_53
    add-int/lit16 v3, v3, -0x3ff

    .line 1782
    invoke-static {}, Lsun/misc/FloatingDecimal;->getBinaryToASCIIBuffer()Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;

    move-result-object v13

    .line 1783
    .local v13, "buf":Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;
    # invokes: Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->setSign(Z)V
    invoke-static {v13, v2}, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->access$000(Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;Z)V

    .line 1785
    move-object v4, v13

    move v5, v3

    move-wide v6, v11

    move v8, v10

    move/from16 v9, p2

    # invokes: Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->dtoa(IJIZ)V
    invoke-static/range {v4 .. v9}, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->access$100(Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;IJIZ)V

    .line 1786
    return-object v13
.end method

.method private static blacklist getBinaryToASCIIConverter(F)Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;
    .registers 13
    .param p0, "f"    # F

    .line 1790
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 1791
    .local v0, "fBits":I
    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    .line 1792
    .local v1, "isNegative":Z
    :goto_c
    const v2, 0x7fffff

    and-int/2addr v2, v0

    .line 1793
    .local v2, "fractBits":I
    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    and-int/2addr v3, v0

    shr-int/lit8 v3, v3, 0x17

    .line 1795
    .local v3, "binExp":I
    const/16 v4, 0xff

    if-ne v3, v4, :cond_2b

    .line 1796
    int-to-long v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_28

    .line 1797
    if-eqz v1, :cond_25

    sget-object v4, Lsun/misc/FloatingDecimal;->B2AC_NEGATIVE_INFINITY:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    goto :goto_27

    :cond_25
    sget-object v4, Lsun/misc/FloatingDecimal;->B2AC_POSITIVE_INFINITY:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    :goto_27
    return-object v4

    .line 1799
    :cond_28
    sget-object v4, Lsun/misc/FloatingDecimal;->B2AC_NOT_A_NUMBER:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    return-object v4

    .line 1807
    :cond_2b
    if-nez v3, :cond_44

    .line 1808
    if-nez v2, :cond_37

    .line 1810
    if-eqz v1, :cond_34

    sget-object v4, Lsun/misc/FloatingDecimal;->B2AC_NEGATIVE_ZERO:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    goto :goto_36

    :cond_34
    sget-object v4, Lsun/misc/FloatingDecimal;->B2AC_POSITIVE_ZERO:Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    :goto_36
    return-object v4

    .line 1812
    :cond_37
    invoke-static {v2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v4

    .line 1813
    .local v4, "leadingZeros":I
    add-int/lit8 v5, v4, -0x8

    .line 1814
    .local v5, "shift":I
    shl-int/2addr v2, v5

    .line 1815
    rsub-int/lit8 v3, v5, 0x1

    .line 1816
    rsub-int/lit8 v4, v4, 0x20

    .line 1817
    .end local v5    # "shift":I
    .local v4, "nSignificantBits":I
    move v10, v4

    goto :goto_4a

    .line 1818
    .end local v4    # "nSignificantBits":I
    :cond_44
    const/high16 v4, 0x800000

    or-int/2addr v2, v4

    .line 1819
    const/16 v4, 0x18

    move v10, v4

    .line 1821
    .local v10, "nSignificantBits":I
    :goto_4a
    add-int/lit8 v3, v3, -0x7f

    .line 1822
    invoke-static {}, Lsun/misc/FloatingDecimal;->getBinaryToASCIIBuffer()Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;

    move-result-object v11

    .line 1823
    .local v11, "buf":Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;
    # invokes: Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->setSign(Z)V
    invoke-static {v11, v1}, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->access$000(Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;Z)V

    .line 1825
    int-to-long v4, v2

    const/16 v6, 0x1d

    shl-long v6, v4, v6

    const/4 v9, 0x1

    move-object v4, v11

    move v5, v3

    move v8, v10

    # invokes: Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->dtoa(IJIZ)V
    invoke-static/range {v4 .. v9}, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->access$100(Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;IJIZ)V

    .line 1826
    return-object v11
.end method

.method static greylist getHexDigit(Ljava/lang/String;I)I
    .registers 6
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "position"    # I

    .line 2534
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 2535
    .local v0, "value":I
    const/4 v2, -0x1

    if-le v0, v2, :cond_10

    if-ge v0, v1, :cond_10

    .line 2539
    return v0

    .line 2536
    :cond_10
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected failure of digit conversion of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2537
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static blacklist parseDouble(Ljava/lang/String;)D
    .registers 3
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 110
    invoke-static {p0}, Lsun/misc/FloatingDecimal;->readJavaFormatString(Ljava/lang/String;)Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    move-result-object v0

    invoke-interface {v0}, Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist parseFloat(Ljava/lang/String;)F
    .registers 2
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 122
    invoke-static {p0}, Lsun/misc/FloatingDecimal;->readJavaFormatString(Ljava/lang/String;)Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    move-result-object v0

    invoke-interface {v0}, Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;->floatValue()F

    move-result v0

    return v0
.end method

.method static blacklist parseHexString(Ljava/lang/String;)Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;
    .registers 47
    .param p0, "s"    # Ljava/lang/String;

    .line 2067
    move-object/from16 v1, p0

    # getter for: Lsun/misc/FloatingDecimal$HexFloatPattern;->VALUE:Ljava/util/regex/Pattern;
    invoke-static {}, Lsun/misc/FloatingDecimal$HexFloatPattern;->access$200()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 2068
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    .line 2069
    .local v3, "validInput":Z
    if-eqz v3, :cond_355

    .line 2097
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 2098
    .local v4, "group1":Ljava/lang/String;
    if-eqz v4, :cond_21

    const-string v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    move v6, v0

    goto :goto_22

    :cond_21
    const/4 v6, 0x0

    .line 2129
    .local v6, "isNegative":Z
    :goto_22
    const/4 v7, 0x0

    .line 2130
    .local v7, "significandString":Ljava/lang/String;
    const/4 v8, 0x0

    .line 2131
    .local v8, "signifLength":I
    const/4 v9, 0x0

    .line 2133
    .local v9, "exponentAdjust":I
    const/4 v10, 0x0

    .line 2136
    .local v10, "leftDigits":I
    const/4 v11, 0x0

    .line 2150
    .local v11, "rightDigits":I
    const/4 v12, 0x4

    invoke-virtual {v2, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    move-object v14, v13

    .local v14, "group4":Ljava/lang/String;
    if-eqz v13, :cond_38

    .line 2152
    invoke-static {v14}, Lsun/misc/FloatingDecimal;->stripLeadingZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2153
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    goto :goto_65

    .line 2157
    :cond_38
    const/4 v13, 0x6

    invoke-virtual {v2, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lsun/misc/FloatingDecimal;->stripLeadingZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2158
    .local v13, "group6":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v10

    .line 2161
    const/4 v15, 0x7

    invoke-virtual {v2, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    .line 2162
    .local v15, "group7":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v11

    .line 2165
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2166
    if-nez v13, :cond_5a

    const-string v17, ""

    move-object/from16 v12, v17

    goto :goto_5b

    :cond_5a
    move-object v12, v13

    :goto_5b
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2171
    .end local v13    # "group6":Ljava/lang/String;
    .end local v15    # "group7":Ljava/lang/String;
    :goto_65
    invoke-static {v7}, Lsun/misc/FloatingDecimal;->stripLeadingZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2172
    .end local v7    # "significandString":Ljava/lang/String;
    .local v5, "significandString":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    .line 2177
    .end local v8    # "signifLength":I
    .local v7, "signifLength":I
    const/4 v8, -0x4

    if-lt v10, v0, :cond_75

    .line 2178
    add-int/lit8 v12, v10, -0x1

    const/4 v13, 0x4

    mul-int/2addr v12, v13

    .end local v9    # "exponentAdjust":I
    .local v12, "exponentAdjust":I
    goto :goto_79

    .line 2180
    .end local v12    # "exponentAdjust":I
    .restart local v9    # "exponentAdjust":I
    :cond_75
    sub-int v12, v11, v7

    add-int/2addr v12, v0

    mul-int/2addr v12, v8

    .line 2186
    .end local v9    # "exponentAdjust":I
    .restart local v12    # "exponentAdjust":I
    :goto_79
    if-nez v7, :cond_83

    .line 2187
    if-eqz v6, :cond_80

    sget-object v0, Lsun/misc/FloatingDecimal;->A2BC_NEGATIVE_ZERO:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    goto :goto_82

    :cond_80
    sget-object v0, Lsun/misc/FloatingDecimal;->A2BC_POSITIVE_ZERO:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    :goto_82
    return-object v0

    .line 2199
    .end local v10    # "leftDigits":I
    .end local v11    # "rightDigits":I
    .end local v14    # "group4":Ljava/lang/String;
    :cond_83
    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 2200
    .local v9, "group8":Ljava/lang/String;
    if-eqz v9, :cond_96

    const-string v10, "+"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_94

    goto :goto_96

    :cond_94
    const/4 v10, 0x0

    goto :goto_97

    :cond_96
    :goto_96
    move v10, v0

    .line 2203
    .local v10, "positiveExponent":Z
    :goto_97
    const/16 v11, 0x9

    :try_start_99
    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_a1
    .catch Ljava/lang/NumberFormatException; {:try_start_99 .. :try_end_a1} :catch_336

    int-to-long v13, v11

    .line 2223
    .local v13, "unsignedRawExponent":J
    nop

    .line 2226
    const-wide/16 v17, -0x1

    const-wide/16 v19, 0x1

    if-eqz v10, :cond_ac

    move-wide/from16 v21, v19

    goto :goto_ae

    :cond_ac
    move-wide/from16 v21, v17

    :goto_ae
    mul-long v21, v21, v13

    .line 2230
    .local v21, "rawExponent":J
    int-to-long v0, v12

    add-long v0, v21, v0

    .line 2236
    .local v0, "exponent":J
    const/4 v15, 0x0

    .line 2237
    .local v15, "round":Z
    const/16 v23, 0x0

    .line 2238
    .local v23, "sticky":Z
    const/16 v24, 0x0

    .line 2239
    .local v24, "nextShift":I
    const-wide/16 v25, 0x0

    .line 2246
    .local v25, "significand":J
    const/4 v11, 0x0

    invoke-static {v5, v11}, Lsun/misc/FloatingDecimal;->getHexDigit(Ljava/lang/String;I)I

    move-result v8

    move/from16 v28, v12

    .end local v12    # "exponentAdjust":I
    .local v28, "exponentAdjust":I
    int-to-long v11, v8

    .line 2257
    .local v11, "leadingDigit":J
    cmp-long v8, v11, v19

    const-wide/16 v29, 0x2

    const-wide/16 v31, 0x7

    const/16 v33, 0x34

    const-wide/16 v34, 0x3

    if-nez v8, :cond_d5

    .line 2258
    shl-long v36, v11, v33

    or-long v25, v25, v36

    .line 2259
    const/16 v8, 0x30

    .end local v24    # "nextShift":I
    .local v8, "nextShift":I
    goto :goto_103

    .line 2261
    .end local v8    # "nextShift":I
    .restart local v24    # "nextShift":I
    :cond_d5
    cmp-long v8, v11, v34

    if-gtz v8, :cond_e4

    .line 2262
    const/16 v8, 0x33

    shl-long v36, v11, v8

    or-long v25, v25, v36

    .line 2263
    const/16 v8, 0x2f

    .line 2264
    .end local v24    # "nextShift":I
    .restart local v8    # "nextShift":I
    add-long v0, v0, v19

    goto :goto_103

    .line 2265
    .end local v8    # "nextShift":I
    .restart local v24    # "nextShift":I
    :cond_e4
    cmp-long v8, v11, v31

    if-gtz v8, :cond_f3

    .line 2266
    const/16 v8, 0x32

    shl-long v36, v11, v8

    or-long v25, v25, v36

    .line 2267
    const/16 v8, 0x2e

    .line 2268
    .end local v24    # "nextShift":I
    .restart local v8    # "nextShift":I
    add-long v0, v0, v29

    goto :goto_103

    .line 2269
    .end local v8    # "nextShift":I
    .restart local v24    # "nextShift":I
    :cond_f3
    const-wide/16 v36, 0xf

    cmp-long v8, v11, v36

    if-gtz v8, :cond_32a

    .line 2270
    const/16 v8, 0x31

    shl-long v36, v11, v8

    or-long v25, v25, v36

    .line 2271
    const/16 v8, 0x2d

    .line 2272
    .end local v24    # "nextShift":I
    .restart local v8    # "nextShift":I
    add-long v0, v0, v34

    .line 2295
    :goto_103
    const/16 v24, 0x0

    .line 2296
    .local v24, "i":I
    const/16 v24, 0x1

    move-object/from16 v36, v2

    move/from16 v2, v24

    .line 2297
    .end local v24    # "i":I
    .local v2, "i":I
    .local v36, "m":Ljava/util/regex/Matcher;
    :goto_10b
    if-ge v2, v7, :cond_126

    if-ltz v8, :cond_126

    .line 2299
    move/from16 v37, v3

    .end local v3    # "validInput":Z
    .local v37, "validInput":Z
    invoke-static {v5, v2}, Lsun/misc/FloatingDecimal;->getHexDigit(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v38, v4

    .end local v4    # "group1":Ljava/lang/String;
    .local v38, "group1":Ljava/lang/String;
    int-to-long v3, v3

    .line 2300
    .local v3, "currentDigit":J
    shl-long v39, v3, v8

    or-long v25, v25, v39

    .line 2301
    nop

    .end local v3    # "currentDigit":J
    add-int/lit8 v8, v8, -0x4

    .line 2298
    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v37

    move-object/from16 v4, v38

    goto :goto_10b

    .line 2297
    .end local v37    # "validInput":Z
    .end local v38    # "group1":Ljava/lang/String;
    .local v3, "validInput":Z
    .restart local v4    # "group1":Ljava/lang/String;
    :cond_126
    move/from16 v37, v3

    move-object/from16 v38, v4

    .line 2309
    .end local v3    # "validInput":Z
    .end local v4    # "group1":Ljava/lang/String;
    .restart local v37    # "validInput":Z
    .restart local v38    # "group1":Ljava/lang/String;
    if-ge v2, v7, :cond_1e8

    .line 2310
    invoke-static {v5, v2}, Lsun/misc/FloatingDecimal;->getHexDigit(Ljava/lang/String;I)I

    move-result v3

    int-to-long v3, v3

    .line 2314
    .local v3, "currentDigit":J
    const-wide/16 v41, 0x8

    move-object/from16 v43, v9

    const/4 v9, -0x4

    .end local v9    # "group8":Ljava/lang/String;
    .local v43, "group8":Ljava/lang/String;
    if-eq v8, v9, :cond_1b3

    const/4 v9, -0x3

    if-eq v8, v9, :cond_18e

    const/4 v9, -0x2

    if-eq v8, v9, :cond_169

    const/4 v9, -0x1

    if-ne v8, v9, :cond_15f

    .line 2318
    const-wide/16 v29, 0xe

    and-long v29, v3, v29

    const/4 v9, 0x1

    shr-long v29, v29, v9

    or-long v24, v25, v29

    .line 2319
    .end local v25    # "significand":J
    .local v24, "significand":J
    and-long v26, v3, v19

    const-wide/16 v29, 0x0

    cmp-long v16, v26, v29

    if-eqz v16, :cond_155

    const/16 v16, 0x1

    goto :goto_157

    :cond_155
    const/16 v16, 0x0

    :goto_157
    move/from16 v15, v16

    .line 2320
    move/from16 v16, v8

    move-wide/from16 v25, v24

    goto/16 :goto_1cc

    .line 2347
    .end local v24    # "significand":J
    .restart local v25    # "significand":J
    :cond_15f
    new-instance v9, Ljava/lang/AssertionError;

    move/from16 v16, v8

    .end local v8    # "nextShift":I
    .local v16, "nextShift":I
    const-string v8, "Unexpected shift distance remainder."

    invoke-direct {v9, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v9

    .line 2325
    .end local v16    # "nextShift":I
    .restart local v8    # "nextShift":I
    :cond_169
    move/from16 v16, v8

    .end local v8    # "nextShift":I
    .restart local v16    # "nextShift":I
    const-wide/16 v31, 0xc

    and-long v31, v3, v31

    const/4 v8, 0x2

    shr-long v31, v31, v8

    or-long v24, v25, v31

    .line 2326
    .end local v25    # "significand":J
    .restart local v24    # "significand":J
    and-long v26, v3, v29

    const-wide/16 v29, 0x0

    cmp-long v8, v26, v29

    if-eqz v8, :cond_17e

    const/4 v8, 0x1

    goto :goto_17f

    :cond_17e
    const/4 v8, 0x0

    .line 2327
    .end local v15    # "round":Z
    .local v8, "round":Z
    :goto_17f
    and-long v26, v3, v19

    cmp-long v15, v26, v29

    if-eqz v15, :cond_187

    const/4 v15, 0x1

    goto :goto_188

    :cond_187
    const/4 v15, 0x0

    :goto_188
    move/from16 v23, v15

    .line 2328
    move v15, v8

    move-wide/from16 v25, v24

    goto :goto_1cc

    .line 2332
    .end local v16    # "nextShift":I
    .end local v24    # "significand":J
    .local v8, "nextShift":I
    .restart local v15    # "round":Z
    .restart local v25    # "significand":J
    :cond_18e
    move/from16 v16, v8

    .end local v8    # "nextShift":I
    .restart local v16    # "nextShift":I
    and-long v29, v3, v41

    const/4 v8, 0x3

    shr-long v29, v29, v8

    or-long v24, v25, v29

    .line 2334
    .end local v25    # "significand":J
    .restart local v24    # "significand":J
    const-wide/16 v26, 0x4

    and-long v26, v3, v26

    const-wide/16 v29, 0x0

    cmp-long v8, v26, v29

    if-eqz v8, :cond_1a3

    const/4 v8, 0x1

    goto :goto_1a4

    :cond_1a3
    const/4 v8, 0x0

    .line 2335
    .end local v15    # "round":Z
    .local v8, "round":Z
    :goto_1a4
    and-long v26, v3, v34

    cmp-long v15, v26, v29

    if-eqz v15, :cond_1ac

    const/4 v15, 0x1

    goto :goto_1ad

    :cond_1ac
    const/4 v15, 0x0

    :goto_1ad
    move/from16 v23, v15

    .line 2336
    move v15, v8

    move-wide/from16 v25, v24

    goto :goto_1cc

    .line 2341
    .end local v16    # "nextShift":I
    .end local v24    # "significand":J
    .local v8, "nextShift":I
    .restart local v15    # "round":Z
    .restart local v25    # "significand":J
    :cond_1b3
    move/from16 v16, v8

    .end local v8    # "nextShift":I
    .restart local v16    # "nextShift":I
    and-long v29, v3, v41

    const-wide/16 v34, 0x0

    cmp-long v8, v29, v34

    if-eqz v8, :cond_1bf

    const/4 v8, 0x1

    goto :goto_1c0

    :cond_1bf
    const/4 v8, 0x0

    .line 2343
    .end local v15    # "round":Z
    .local v8, "round":Z
    :goto_1c0
    and-long v29, v3, v31

    cmp-long v15, v29, v34

    if-eqz v15, :cond_1c8

    const/4 v15, 0x1

    goto :goto_1c9

    :cond_1c8
    const/4 v15, 0x0

    :goto_1c9
    move/from16 v23, v15

    .line 2344
    move v15, v8

    .line 2356
    .end local v8    # "round":Z
    .restart local v15    # "round":Z
    :goto_1cc
    add-int/lit8 v2, v2, 0x1

    .line 2357
    :goto_1ce
    if-ge v2, v7, :cond_1ec

    if-nez v23, :cond_1ec

    .line 2358
    invoke-static {v5, v2}, Lsun/misc/FloatingDecimal;->getHexDigit(Ljava/lang/String;I)I

    move-result v8

    int-to-long v3, v8

    .line 2359
    if-nez v23, :cond_1e2

    const-wide/16 v29, 0x0

    cmp-long v8, v3, v29

    if-eqz v8, :cond_1e0

    goto :goto_1e2

    :cond_1e0
    const/4 v8, 0x0

    goto :goto_1e3

    :cond_1e2
    :goto_1e2
    const/4 v8, 0x1

    :goto_1e3
    move/from16 v23, v8

    .line 2360
    add-int/lit8 v2, v2, 0x1

    goto :goto_1ce

    .line 2309
    .end local v3    # "currentDigit":J
    .end local v16    # "nextShift":I
    .end local v43    # "group8":Ljava/lang/String;
    .local v8, "nextShift":I
    .restart local v9    # "group8":Ljava/lang/String;
    :cond_1e8
    move/from16 v16, v8

    move-object/from16 v43, v9

    .line 2368
    .end local v8    # "nextShift":I
    .end local v9    # "group8":Ljava/lang/String;
    .restart local v16    # "nextShift":I
    .restart local v43    # "group8":Ljava/lang/String;
    :cond_1ec
    if-eqz v6, :cond_1f1

    const/high16 v3, -0x80000000

    goto :goto_1f2

    :cond_1f1
    const/4 v3, 0x0

    .line 2369
    .local v3, "floatBits":I
    :goto_1f2
    const-wide/16 v29, -0x7e

    cmp-long v4, v0, v29

    if-ltz v4, :cond_238

    .line 2370
    const-wide/16 v29, 0x7f

    cmp-long v4, v0, v29

    if-lez v4, :cond_207

    .line 2372
    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    or-int/2addr v3, v4

    move/from16 v29, v2

    move/from16 v27, v10

    goto/16 :goto_26c

    .line 2374
    :cond_207
    const/16 v4, 0x1c

    .line 2375
    .local v4, "threshShift":I
    shl-long v29, v19, v4

    sub-long v29, v29, v19

    and-long v29, v25, v29

    const-wide/16 v31, 0x0

    cmp-long v8, v29, v31

    if-nez v8, :cond_21c

    if-nez v15, :cond_21c

    if-eqz v23, :cond_21a

    goto :goto_21c

    :cond_21a
    const/4 v8, 0x0

    goto :goto_21d

    :cond_21c
    :goto_21c
    const/4 v8, 0x1

    .line 2376
    .local v8, "floatSticky":Z
    :goto_21d
    move/from16 v27, v10

    .end local v10    # "positiveExponent":Z
    .local v27, "positiveExponent":Z
    ushr-long v9, v25, v4

    long-to-int v9, v9

    .line 2377
    .local v9, "iValue":I
    and-int/lit8 v10, v9, 0x3

    move/from16 v29, v2

    const/4 v2, 0x1

    .end local v2    # "i":I
    .local v29, "i":I
    if-ne v10, v2, :cond_22b

    if-eqz v8, :cond_22d

    .line 2378
    :cond_22b
    add-int/lit8 v9, v9, 0x1

    .line 2380
    :cond_22d
    long-to-int v10, v0

    add-int/lit8 v10, v10, 0x7e

    shl-int/lit8 v10, v10, 0x17

    shr-int/lit8 v24, v9, 0x1

    add-int v10, v10, v24

    or-int/2addr v3, v10

    .line 2381
    .end local v4    # "threshShift":I
    .end local v8    # "floatSticky":Z
    .end local v9    # "iValue":I
    goto :goto_26c

    .line 2383
    .end local v27    # "positiveExponent":Z
    .end local v29    # "i":I
    .restart local v2    # "i":I
    .restart local v10    # "positiveExponent":Z
    :cond_238
    move/from16 v29, v2

    move/from16 v27, v10

    .end local v2    # "i":I
    .end local v10    # "positiveExponent":Z
    .restart local v27    # "positiveExponent":Z
    .restart local v29    # "i":I
    const-wide/16 v8, -0x96

    cmp-long v4, v0, v8

    if-gez v4, :cond_243

    goto :goto_26c

    .line 2387
    :cond_243
    const-wide/16 v8, -0x62

    sub-long/2addr v8, v0

    long-to-int v4, v8

    .line 2388
    .restart local v4    # "threshShift":I
    nop

    .line 2389
    nop

    .line 2390
    shl-long v8, v19, v4

    sub-long v8, v8, v19

    and-long v8, v25, v8

    const-wide/16 v30, 0x0

    cmp-long v8, v8, v30

    if-nez v8, :cond_25c

    if-nez v15, :cond_25c

    if-eqz v23, :cond_25a

    goto :goto_25c

    :cond_25a
    const/4 v8, 0x0

    goto :goto_25d

    :cond_25c
    :goto_25c
    const/4 v8, 0x1

    .line 2391
    .restart local v8    # "floatSticky":Z
    :goto_25d
    ushr-long v9, v25, v4

    long-to-int v9, v9

    .line 2392
    .restart local v9    # "iValue":I
    and-int/lit8 v10, v9, 0x3

    const/4 v2, 0x1

    if-ne v10, v2, :cond_267

    if-eqz v8, :cond_269

    .line 2393
    :cond_267
    add-int/lit8 v9, v9, 0x1

    .line 2395
    :cond_269
    shr-int/lit8 v10, v9, 0x1

    or-int/2addr v3, v10

    .line 2398
    .end local v4    # "threshShift":I
    .end local v8    # "floatSticky":Z
    .end local v9    # "iValue":I
    :goto_26c
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    .line 2401
    .local v4, "fValue":F
    const-wide/16 v8, 0x3ff

    cmp-long v10, v0, v8

    if-lez v10, :cond_27e

    .line 2403
    if-eqz v6, :cond_27b

    sget-object v2, Lsun/misc/FloatingDecimal;->A2BC_NEGATIVE_INFINITY:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    goto :goto_27d

    :cond_27b
    sget-object v2, Lsun/misc/FloatingDecimal;->A2BC_POSITIVE_INFINITY:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    :goto_27d
    return-object v2

    .line 2405
    :cond_27e
    cmp-long v10, v0, v8

    const-wide v30, 0xfffffffffffffL

    if-gtz v10, :cond_29f

    const-wide/16 v34, -0x3fe

    cmp-long v10, v0, v34

    if-ltz v10, :cond_29f

    .line 2419
    add-long/2addr v8, v0

    shl-long v8, v8, v33

    const-wide/high16 v17, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long v8, v8, v17

    and-long v17, v25, v30

    or-long v8, v8, v17

    move/from16 v2, v23

    const-wide/16 v25, 0x0

    move/from16 v23, v3

    .end local v25    # "significand":J
    .local v8, "significand":J
    goto :goto_2f6

    .line 2428
    .end local v8    # "significand":J
    .restart local v25    # "significand":J
    :cond_29f
    const-wide/16 v8, -0x433

    cmp-long v8, v0, v8

    if-gez v8, :cond_2ad

    .line 2432
    if-eqz v6, :cond_2aa

    sget-object v2, Lsun/misc/FloatingDecimal;->A2BC_NEGATIVE_ZERO:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    goto :goto_2ac

    :cond_2aa
    sget-object v2, Lsun/misc/FloatingDecimal;->A2BC_POSITIVE_ZERO:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    :goto_2ac
    return-object v2

    .line 2440
    :cond_2ad
    if-nez v23, :cond_2b4

    if-eqz v15, :cond_2b2

    goto :goto_2b4

    :cond_2b2
    const/4 v8, 0x0

    goto :goto_2b5

    :cond_2b4
    :goto_2b4
    const/4 v8, 0x1

    .line 2441
    .end local v23    # "sticky":Z
    .local v8, "sticky":Z
    :goto_2b5
    const/4 v9, 0x0

    .line 2449
    .end local v15    # "round":Z
    .local v9, "round":Z
    long-to-int v10, v0

    add-int/lit16 v10, v10, 0x432

    const/4 v2, 0x1

    add-int/2addr v10, v2

    rsub-int/lit8 v10, v10, 0x35

    .line 2451
    .local v10, "bitsDiscarded":I
    nop

    .line 2455
    add-int/lit8 v15, v10, -0x1

    shl-long v23, v19, v15

    and-long v23, v25, v23

    const-wide/16 v32, 0x0

    cmp-long v15, v23, v32

    if-eqz v15, :cond_2cc

    const/4 v15, 0x1

    goto :goto_2cd

    :cond_2cc
    const/4 v15, 0x0

    .line 2456
    .end local v9    # "round":Z
    .restart local v15    # "round":Z
    :goto_2cd
    const/4 v2, 0x1

    if-le v10, v2, :cond_2e7

    .line 2459
    add-int/lit8 v9, v10, -0x1

    move/from16 v23, v3

    .end local v3    # "floatBits":I
    .local v23, "floatBits":I
    shl-long v2, v17, v9

    not-long v2, v2

    .line 2460
    .local v2, "mask":J
    if-nez v8, :cond_2e4

    and-long v17, v25, v2

    const-wide/16 v32, 0x0

    cmp-long v9, v17, v32

    if-eqz v9, :cond_2e2

    goto :goto_2e4

    :cond_2e2
    const/4 v9, 0x0

    goto :goto_2e5

    :cond_2e4
    :goto_2e4
    const/4 v9, 0x1

    :goto_2e5
    move v8, v9

    goto :goto_2e9

    .line 2456
    .end local v2    # "mask":J
    .end local v23    # "floatBits":I
    .restart local v3    # "floatBits":I
    :cond_2e7
    move/from16 v23, v3

    .line 2464
    .end local v3    # "floatBits":I
    .restart local v23    # "floatBits":I
    :goto_2e9
    shr-long v2, v25, v10

    .line 2466
    .end local v25    # "significand":J
    .local v2, "significand":J
    and-long v17, v2, v30

    const-wide/16 v25, 0x0

    or-long v2, v17, v25

    move-wide/from16 v44, v2

    move v2, v8

    move-wide/from16 v8, v44

    .line 2498
    .end local v10    # "bitsDiscarded":I
    .local v2, "sticky":Z
    .local v8, "significand":J
    :goto_2f6
    and-long v17, v8, v19

    cmp-long v3, v17, v25

    if-nez v3, :cond_2ff

    const/16 v24, 0x1

    goto :goto_301

    :cond_2ff
    const/16 v24, 0x0

    :goto_301
    move/from16 v3, v24

    .line 2499
    .local v3, "leastZero":Z
    if-eqz v3, :cond_309

    if-eqz v15, :cond_309

    if-nez v2, :cond_30d

    :cond_309
    if-nez v3, :cond_30f

    if-eqz v15, :cond_30f

    .line 2501
    :cond_30d
    add-long v8, v8, v19

    .line 2504
    :cond_30f
    if-eqz v6, :cond_31a

    .line 2505
    const-wide/high16 v17, -0x8000000000000000L

    or-long v17, v8, v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v17

    goto :goto_31e

    .line 2506
    :cond_31a
    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v17

    :goto_31e
    move-wide/from16 v19, v17

    .line 2508
    .local v19, "value":D
    new-instance v10, Lsun/misc/FloatingDecimal$PreparedASCIIToBinaryBuffer;

    move-wide/from16 v17, v0

    move-wide/from16 v0, v19

    .end local v19    # "value":D
    .local v0, "value":D
    .local v17, "exponent":J
    invoke-direct {v10, v0, v1, v4}, Lsun/misc/FloatingDecimal$PreparedASCIIToBinaryBuffer;-><init>(DF)V

    return-object v10

    .line 2274
    .end local v8    # "significand":J
    .end local v16    # "nextShift":I
    .end local v17    # "exponent":J
    .end local v27    # "positiveExponent":Z
    .end local v29    # "i":I
    .end local v36    # "m":Ljava/util/regex/Matcher;
    .end local v37    # "validInput":Z
    .end local v38    # "group1":Ljava/lang/String;
    .end local v43    # "group8":Ljava/lang/String;
    .local v0, "exponent":J
    .local v2, "m":Ljava/util/regex/Matcher;
    .local v3, "validInput":Z
    .local v4, "group1":Ljava/lang/String;
    .local v9, "group8":Ljava/lang/String;
    .local v10, "positiveExponent":Z
    .local v23, "sticky":Z
    .local v24, "nextShift":I
    .restart local v25    # "significand":J
    :cond_32a
    move-object/from16 v36, v2

    move/from16 v37, v3

    .end local v2    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "validInput":Z
    .restart local v36    # "m":Ljava/util/regex/Matcher;
    .restart local v37    # "validInput":Z
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Result from digit conversion too large!"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 2205
    .end local v0    # "exponent":J
    .end local v11    # "leadingDigit":J
    .end local v13    # "unsignedRawExponent":J
    .end local v15    # "round":Z
    .end local v21    # "rawExponent":J
    .end local v23    # "sticky":Z
    .end local v24    # "nextShift":I
    .end local v25    # "significand":J
    .end local v28    # "exponentAdjust":I
    .end local v36    # "m":Ljava/util/regex/Matcher;
    .end local v37    # "validInput":Z
    .restart local v2    # "m":Ljava/util/regex/Matcher;
    .restart local v3    # "validInput":Z
    .restart local v12    # "exponentAdjust":I
    :catch_336
    move-exception v0

    move-object/from16 v36, v2

    move/from16 v37, v3

    move-object/from16 v38, v4

    move-object/from16 v43, v9

    move/from16 v27, v10

    move/from16 v28, v12

    .line 2219
    .end local v2    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "validInput":Z
    .end local v4    # "group1":Ljava/lang/String;
    .end local v9    # "group8":Ljava/lang/String;
    .end local v10    # "positiveExponent":Z
    .end local v12    # "exponentAdjust":I
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v27    # "positiveExponent":Z
    .restart local v28    # "exponentAdjust":I
    .restart local v36    # "m":Ljava/util/regex/Matcher;
    .restart local v37    # "validInput":Z
    .restart local v38    # "group1":Ljava/lang/String;
    .restart local v43    # "group8":Ljava/lang/String;
    if-eqz v6, :cond_34d

    .line 2220
    if-eqz v27, :cond_34a

    sget-object v1, Lsun/misc/FloatingDecimal;->A2BC_NEGATIVE_INFINITY:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    goto :goto_354

    :cond_34a
    sget-object v1, Lsun/misc/FloatingDecimal;->A2BC_NEGATIVE_ZERO:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    goto :goto_354

    .line 2221
    :cond_34d
    if-eqz v27, :cond_352

    sget-object v1, Lsun/misc/FloatingDecimal;->A2BC_POSITIVE_INFINITY:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    goto :goto_354

    :cond_352
    sget-object v1, Lsun/misc/FloatingDecimal;->A2BC_POSITIVE_ZERO:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    .line 2219
    :goto_354
    return-object v1

    .line 2071
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "significandString":Ljava/lang/String;
    .end local v6    # "isNegative":Z
    .end local v7    # "signifLength":I
    .end local v27    # "positiveExponent":Z
    .end local v28    # "exponentAdjust":I
    .end local v36    # "m":Ljava/util/regex/Matcher;
    .end local v37    # "validInput":Z
    .end local v38    # "group1":Ljava/lang/String;
    .end local v43    # "group8":Ljava/lang/String;
    .restart local v2    # "m":Ljava/util/regex/Matcher;
    .restart local v3    # "validInput":Z
    :cond_355
    move-object/from16 v36, v2

    move/from16 v37, v3

    .end local v2    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "validInput":Z
    .restart local v36    # "m":Ljava/util/regex/Matcher;
    .restart local v37    # "validInput":Z
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "For input string: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist readJavaFormatString(Ljava/lang/String;)Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;
    .registers 23
    .param p0, "in"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1831
    const/4 v1, 0x0

    .line 1832
    .local v1, "isNegative":Z
    const/4 v2, 0x0

    .line 1838
    .local v2, "signSeen":Z
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_6} :catch_1c2

    move-object v3, v0

    .line 1840
    .end local p0    # "in":Ljava/lang/String;
    .local v3, "in":Ljava/lang/String;
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    .line 1841
    .local v0, "len":I
    if-eqz v0, :cond_1b8

    .line 1844
    const/4 v4, 0x0

    .line 1845
    .local v4, "i":I
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5
    :try_end_12
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_7 .. :try_end_12} :catch_1c0

    const/16 v6, 0x2d

    const/16 v7, 0x2b

    if-eq v5, v7, :cond_1c

    if-eq v5, v6, :cond_1b

    goto :goto_1f

    .line 1847
    :cond_1b
    const/4 v1, 0x1

    .line 1850
    :cond_1c
    add-int/lit8 v4, v4, 0x1

    .line 1851
    const/4 v2, 0x1

    .line 1853
    :goto_1f
    :try_start_1f
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5
    :try_end_23
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1f .. :try_end_23} :catch_1b4

    .line 1854
    .local v5, "c":C
    const/16 v8, 0x4e

    if-ne v5, v8, :cond_3c

    .line 1855
    sub-int v6, v0, v4

    :try_start_29
    sget v7, Lsun/misc/FloatingDecimal;->NAN_LENGTH:I

    if-ne v6, v7, :cond_38

    const-string v6, "NaN"

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_38

    .line 1856
    sget-object v6, Lsun/misc/FloatingDecimal;->A2BC_NOT_A_NUMBER:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    return-object v6

    .line 1859
    :cond_38
    move/from16 v18, v2

    goto/16 :goto_19d

    .line 1860
    :cond_3c
    const/16 v8, 0x49

    if-ne v5, v8, :cond_5a

    .line 1861
    sub-int v6, v0, v4

    sget v7, Lsun/misc/FloatingDecimal;->INFINITY_LENGTH:I

    if-ne v6, v7, :cond_56

    const-string v6, "Infinity"

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_56

    .line 1862
    if-eqz v1, :cond_53

    sget-object v6, Lsun/misc/FloatingDecimal;->A2BC_NEGATIVE_INFINITY:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    goto :goto_55

    :cond_53
    sget-object v6, Lsun/misc/FloatingDecimal;->A2BC_POSITIVE_INFINITY:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    :goto_55
    return-object v6

    .line 1865
    :cond_56
    move/from16 v18, v2

    goto/16 :goto_19d

    .line 1866
    :cond_5a
    const/16 v8, 0x30

    if-ne v5, v8, :cond_75

    .line 1867
    add-int/lit8 v9, v4, 0x1

    if-le v0, v9, :cond_75

    .line 1868
    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 1869
    .local v9, "ch":C
    const/16 v10, 0x78

    if-eq v9, v10, :cond_70

    const/16 v10, 0x58

    if-ne v9, v10, :cond_75

    .line 1870
    :cond_70
    invoke-static {v3}, Lsun/misc/FloatingDecimal;->parseHexString(Ljava/lang/String;)Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    move-result-object v6
    :try_end_74
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_29 .. :try_end_74} :catch_1c0

    return-object v6

    .line 1875
    .end local v9    # "ch":C
    :cond_75
    :try_start_75
    new-array v9, v0, [C
    :try_end_77
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_75 .. :try_end_77} :catch_1b4

    .line 1876
    .local v9, "digits":[C
    const/4 v10, 0x0

    .line 1877
    .local v10, "nDigits":I
    const/4 v11, 0x0

    .line 1878
    .local v11, "decSeen":Z
    const/4 v12, 0x0

    .line 1879
    .local v12, "decPt":I
    const/4 v13, 0x0

    .line 1880
    .local v13, "nLeadZero":I
    const/4 v14, 0x0

    .line 1883
    .local v14, "nTrailZero":I
    :goto_7c
    const-string v15, "multiple points"

    const/16 v6, 0x2e

    if-ge v4, v0, :cond_a3

    .line 1884
    :try_start_82
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v16

    move/from16 v5, v16

    .line 1885
    if-ne v5, v8, :cond_8d

    .line 1886
    add-int/lit8 v13, v13, 0x1

    goto :goto_98

    .line 1887
    :cond_8d
    if-ne v5, v6, :cond_a3

    .line 1888
    if-nez v11, :cond_9d

    .line 1892
    move v6, v4

    .line 1893
    .end local v12    # "decPt":I
    .local v6, "decPt":I
    if-eqz v2, :cond_96

    .line 1894
    add-int/lit8 v6, v6, -0x1

    .line 1896
    :cond_96
    const/4 v11, 0x1

    move v12, v6

    .line 1900
    .end local v6    # "decPt":I
    .restart local v12    # "decPt":I
    :goto_98
    add-int/lit8 v4, v4, 0x1

    const/16 v6, 0x2d

    goto :goto_7c

    .line 1890
    :cond_9d
    new-instance v6, Ljava/lang/NumberFormatException;

    invoke-direct {v6, v15}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .end local v1    # "isNegative":Z
    .end local v2    # "signSeen":Z
    .end local v3    # "in":Ljava/lang/String;
    throw v6

    .line 1903
    .restart local v1    # "isNegative":Z
    .restart local v2    # "signSeen":Z
    .restart local v3    # "in":Ljava/lang/String;
    :cond_a3
    :goto_a3
    const/16 v7, 0x39

    if-ge v4, v0, :cond_e1

    .line 1904
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v5, v17

    .line 1905
    const/16 v6, 0x31

    if-lt v5, v6, :cond_bd

    if-gt v5, v7, :cond_bd

    .line 1906
    add-int/lit8 v6, v10, 0x1

    .end local v10    # "nDigits":I
    .local v6, "nDigits":I
    aput-char v5, v9, v10

    .line 1907
    const/4 v7, 0x0

    move v10, v6

    move v14, v7

    const/16 v6, 0x2e

    .end local v14    # "nTrailZero":I
    .local v7, "nTrailZero":I
    goto :goto_d6

    .line 1908
    .end local v6    # "nDigits":I
    .end local v7    # "nTrailZero":I
    .restart local v10    # "nDigits":I
    .restart local v14    # "nTrailZero":I
    :cond_bd
    if-ne v5, v8, :cond_c9

    .line 1909
    add-int/lit8 v6, v10, 0x1

    .end local v10    # "nDigits":I
    .restart local v6    # "nDigits":I
    aput-char v5, v9, v10

    .line 1910
    add-int/lit8 v14, v14, 0x1

    move v10, v6

    const/16 v6, 0x2e

    goto :goto_d6

    .line 1911
    .end local v6    # "nDigits":I
    .restart local v10    # "nDigits":I
    :cond_c9
    const/16 v6, 0x2e

    if-ne v5, v6, :cond_e1

    .line 1912
    if-nez v11, :cond_db

    .line 1916
    move v7, v4

    .line 1917
    .end local v12    # "decPt":I
    .local v7, "decPt":I
    if-eqz v2, :cond_d4

    .line 1918
    add-int/lit8 v7, v7, -0x1

    .line 1920
    :cond_d4
    const/4 v11, 0x1

    move v12, v7

    .line 1924
    .end local v7    # "decPt":I
    .restart local v12    # "decPt":I
    :goto_d6
    add-int/lit8 v4, v4, 0x1

    const/16 v7, 0x2b

    goto :goto_a3

    .line 1914
    :cond_db
    new-instance v6, Ljava/lang/NumberFormatException;

    invoke-direct {v6, v15}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .end local v1    # "isNegative":Z
    .end local v2    # "signSeen":Z
    .end local v3    # "in":Ljava/lang/String;
    throw v6
    :try_end_e1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_82 .. :try_end_e1} :catch_1c0

    .line 1926
    .restart local v1    # "isNegative":Z
    .restart local v2    # "signSeen":Z
    .restart local v3    # "in":Ljava/lang/String;
    :cond_e1
    sub-int/2addr v10, v14

    .line 1946
    if-nez v10, :cond_e6

    const/4 v6, 0x1

    goto :goto_e7

    :cond_e6
    const/4 v6, 0x0

    .line 1947
    .local v6, "isZero":Z
    :goto_e7
    if-eqz v6, :cond_f0

    if-eqz v13, :cond_ec

    goto :goto_f0

    .line 1951
    :cond_ec
    move/from16 v18, v2

    goto/16 :goto_19d

    .line 1958
    :cond_f0
    :goto_f0
    if-eqz v11, :cond_f5

    .line 1959
    sub-int v15, v12, v13

    .local v15, "decExp":I
    goto :goto_f7

    .line 1961
    .end local v15    # "decExp":I
    :cond_f5
    add-int v15, v10, v14

    .line 1967
    .restart local v15    # "decExp":I
    :goto_f7
    if-ge v4, v0, :cond_173

    :try_start_f9
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7
    :try_end_fd
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_f9 .. :try_end_fd} :catch_1b4

    move v5, v7

    const/16 v8, 0x65

    if-eq v7, v8, :cond_10b

    const/16 v7, 0x45

    if-ne v5, v7, :cond_107

    goto :goto_10b

    :cond_107
    move/from16 v18, v2

    goto/16 :goto_175

    .line 1968
    :cond_10b
    :goto_10b
    const/4 v7, 0x1

    .line 1969
    .local v7, "expSign":I
    const/4 v8, 0x0

    .line 1970
    .local v8, "expVal":I
    move/from16 v18, v2

    .end local v2    # "signSeen":Z
    .local v18, "signSeen":Z
    const v2, 0xccccccc

    .line 1971
    .local v2, "reallyBig":I
    const/16 v19, 0x0

    .line 1972
    .local v19, "expOverflow":Z
    add-int/lit8 v4, v4, 0x1

    move/from16 v20, v5

    .end local v5    # "c":C
    .local v20, "c":C
    :try_start_118
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move/from16 v21, v7

    const/16 v7, 0x2b

    .end local v7    # "expSign":I
    .local v21, "expSign":I
    if-eq v5, v7, :cond_12b

    const/16 v7, 0x2d

    if-eq v5, v7, :cond_129

    move/from16 v7, v21

    goto :goto_12f

    .line 1974
    :cond_129
    const/4 v7, -0x1

    .end local v21    # "expSign":I
    .restart local v7    # "expSign":I
    goto :goto_12d

    .line 1972
    .end local v7    # "expSign":I
    .restart local v21    # "expSign":I
    :cond_12b
    move/from16 v7, v21

    .line 1977
    .end local v21    # "expSign":I
    .restart local v7    # "expSign":I
    :goto_12d
    add-int/lit8 v4, v4, 0x1

    .line 1979
    :goto_12f
    move v5, v4

    .line 1981
    .local v5, "expAt":I
    :goto_130
    if-ge v4, v0, :cond_15c

    .line 1982
    if-lt v8, v2, :cond_138

    .line 1985
    const/16 v16, 0x1

    move/from16 v19, v16

    .line 1987
    :cond_138
    add-int/lit8 v16, v4, 0x1

    .end local v4    # "i":I
    .local v16, "i":I
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1988
    .end local v20    # "c":C
    .local v4, "c":C
    move/from16 p0, v2

    const/16 v2, 0x30

    .end local v2    # "reallyBig":I
    .local p0, "reallyBig":I
    if-lt v4, v2, :cond_155

    const/16 v2, 0x39

    if-gt v4, v2, :cond_155

    .line 1989
    mul-int/lit8 v17, v8, 0xa

    add-int/lit8 v20, v4, -0x30

    add-int v8, v17, v20

    move/from16 v2, p0

    move/from16 v20, v4

    move/from16 v4, v16

    goto :goto_130

    .line 1991
    :cond_155
    add-int/lit8 v16, v16, -0x1

    .line 1992
    move/from16 v20, v4

    move/from16 v4, v16

    goto :goto_15e

    .line 1981
    .end local v16    # "i":I
    .end local p0    # "reallyBig":I
    .restart local v2    # "reallyBig":I
    .local v4, "i":I
    .restart local v20    # "c":C
    :cond_15c
    move/from16 p0, v2

    .line 1995
    .end local v2    # "reallyBig":I
    .restart local p0    # "reallyBig":I
    :goto_15e
    add-int/lit16 v2, v10, 0x144

    add-int/2addr v2, v14

    .line 1996
    .local v2, "expLimit":I
    if-nez v19, :cond_16b

    if-le v8, v2, :cond_166

    goto :goto_16b

    .line 2013
    :cond_166
    mul-int v16, v7, v8

    add-int v15, v15, v16

    goto :goto_16d

    .line 2009
    :cond_16b
    :goto_16b
    mul-int v15, v7, v2

    .line 2022
    :goto_16d
    if-eq v4, v5, :cond_172

    move/from16 v5, v20

    goto :goto_175

    .line 2023
    :cond_172
    goto :goto_19d

    .line 1967
    .end local v7    # "expSign":I
    .end local v8    # "expVal":I
    .end local v18    # "signSeen":Z
    .end local v19    # "expOverflow":Z
    .end local v20    # "c":C
    .end local p0    # "reallyBig":I
    .local v2, "signSeen":Z
    .local v5, "c":C
    :cond_173
    move/from16 v18, v2

    .line 2030
    .end local v2    # "signSeen":Z
    .restart local v18    # "signSeen":Z
    :goto_175
    if-ge v4, v0, :cond_1a0

    add-int/lit8 v2, v0, -0x1

    if-ne v4, v2, :cond_19c

    .line 2032
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v7, 0x66

    if-eq v2, v7, :cond_1a0

    .line 2033
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v7, 0x46

    if-eq v2, v7, :cond_1a0

    .line 2034
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v7, 0x64

    if-eq v2, v7, :cond_1a0

    .line 2035
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v7, 0x44

    if-ne v2, v7, :cond_19c

    goto :goto_1a0

    .line 2036
    :cond_19c
    nop

    .line 2043
    .end local v0    # "len":I
    .end local v4    # "i":I
    .end local v5    # "c":C
    .end local v6    # "isZero":Z
    .end local v9    # "digits":[C
    .end local v10    # "nDigits":I
    .end local v11    # "decSeen":Z
    .end local v12    # "decPt":I
    .end local v13    # "nLeadZero":I
    .end local v14    # "nTrailZero":I
    .end local v15    # "decExp":I
    .end local v18    # "signSeen":Z
    .restart local v2    # "signSeen":Z
    :goto_19d
    move/from16 v2, v18

    .end local v2    # "signSeen":Z
    .restart local v18    # "signSeen":Z
    goto :goto_1c5

    .line 2038
    .restart local v0    # "len":I
    .restart local v4    # "i":I
    .restart local v5    # "c":C
    .restart local v6    # "isZero":Z
    .restart local v9    # "digits":[C
    .restart local v10    # "nDigits":I
    .restart local v11    # "decSeen":Z
    .restart local v12    # "decPt":I
    .restart local v13    # "nLeadZero":I
    .restart local v14    # "nTrailZero":I
    .restart local v15    # "decExp":I
    :cond_1a0
    :goto_1a0
    if-eqz v6, :cond_1aa

    .line 2039
    if-eqz v1, :cond_1a7

    sget-object v2, Lsun/misc/FloatingDecimal;->A2BC_NEGATIVE_ZERO:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    goto :goto_1a9

    :cond_1a7
    sget-object v2, Lsun/misc/FloatingDecimal;->A2BC_POSITIVE_ZERO:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    :goto_1a9
    return-object v2

    .line 2041
    :cond_1aa
    new-instance v2, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;

    invoke-direct {v2, v1, v15, v9, v10}, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;-><init>(ZI[CI)V
    :try_end_1af
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_118 .. :try_end_1af} :catch_1b0

    return-object v2

    .line 2042
    .end local v0    # "len":I
    .end local v4    # "i":I
    .end local v5    # "c":C
    .end local v6    # "isZero":Z
    .end local v9    # "digits":[C
    .end local v10    # "nDigits":I
    .end local v11    # "decSeen":Z
    .end local v12    # "decPt":I
    .end local v13    # "nLeadZero":I
    .end local v14    # "nTrailZero":I
    .end local v15    # "decExp":I
    :catch_1b0
    move-exception v0

    move/from16 v2, v18

    goto :goto_1c5

    .end local v18    # "signSeen":Z
    .restart local v2    # "signSeen":Z
    :catch_1b4
    move-exception v0

    move/from16 v18, v2

    .end local v2    # "signSeen":Z
    .restart local v18    # "signSeen":Z
    goto :goto_1c5

    .line 1842
    .end local v18    # "signSeen":Z
    .restart local v0    # "len":I
    .restart local v2    # "signSeen":Z
    :cond_1b8
    :try_start_1b8
    new-instance v4, Ljava/lang/NumberFormatException;

    const-string v5, "empty String"

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .end local v1    # "isNegative":Z
    .end local v2    # "signSeen":Z
    .end local v3    # "in":Ljava/lang/String;
    throw v4
    :try_end_1c0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1b8 .. :try_end_1c0} :catch_1c0

    .line 2042
    .end local v0    # "len":I
    .restart local v1    # "isNegative":Z
    .restart local v2    # "signSeen":Z
    .restart local v3    # "in":Ljava/lang/String;
    :catch_1c0
    move-exception v0

    goto :goto_1c5

    .end local v3    # "in":Ljava/lang/String;
    .local p0, "in":Ljava/lang/String;
    :catch_1c2
    move-exception v0

    move-object/from16 v3, p0

    .line 2043
    .end local p0    # "in":Ljava/lang/String;
    .restart local v3    # "in":Ljava/lang/String;
    :goto_1c5
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "For input string: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static greylist stripLeadingZeros(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .line 2518
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_27

    .line 2519
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_24

    .line 2520
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v1, :cond_21

    .line 2521
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2519
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 2524
    .end local v0    # "i":I
    :cond_24
    const-string v0, ""

    return-object v0

    .line 2526
    :cond_27
    return-object p0
.end method

.method public static blacklist toJavaFormatString(D)Ljava/lang/String;
    .registers 3
    .param p0, "d"    # D

    .line 70
    invoke-static {p0, p1}, Lsun/misc/FloatingDecimal;->getBinaryToASCIIConverter(D)Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    move-result-object v0

    invoke-interface {v0}, Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;->toJavaFormatString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist toJavaFormatString(F)Ljava/lang/String;
    .registers 2
    .param p0, "f"    # F

    .line 80
    invoke-static {p0}, Lsun/misc/FloatingDecimal;->getBinaryToASCIIConverter(F)Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;

    move-result-object v0

    invoke-interface {v0}, Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;->toJavaFormatString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
