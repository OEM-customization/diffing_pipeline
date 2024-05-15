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
    .registers 46
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
    if-eqz v3, :cond_341

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
    if-lt v10, v0, :cond_74

    .line 2178
    add-int/lit8 v8, v10, -0x1

    const/4 v12, 0x4

    mul-int/2addr v8, v12

    .end local v9    # "exponentAdjust":I
    .local v8, "exponentAdjust":I
    goto :goto_79

    .line 2180
    .end local v8    # "exponentAdjust":I
    .restart local v9    # "exponentAdjust":I
    :cond_74
    sub-int v8, v11, v7

    add-int/2addr v8, v0

    mul-int/lit8 v8, v8, -0x4

    .line 2186
    .end local v9    # "exponentAdjust":I
    .restart local v8    # "exponentAdjust":I
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
    .catch Ljava/lang/NumberFormatException; {:try_start_99 .. :try_end_a1} :catch_322

    int-to-long v11, v11

    .line 2223
    .local v11, "unsignedRawExponent":J
    nop

    .line 2226
    const-wide/16 v17, 0x1

    if-eqz v10, :cond_aa

    move-wide/from16 v19, v17

    goto :goto_ac

    :cond_aa
    const-wide/16 v19, -0x1

    :goto_ac
    mul-long v19, v19, v11

    .line 2230
    .local v19, "rawExponent":J
    int-to-long v13, v8

    add-long v13, v19, v13

    .line 2236
    .local v13, "exponent":J
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
    move-object/from16 v16, v2

    const/4 v0, 0x0

    .end local v2    # "m":Ljava/util/regex/Matcher;
    .local v16, "m":Ljava/util/regex/Matcher;
    invoke-static {v5, v0}, Lsun/misc/FloatingDecimal;->getHexDigit(Ljava/lang/String;I)I

    move-result v2

    int-to-long v0, v2

    .line 2257
    .local v0, "leadingDigit":J
    cmp-long v2, v0, v17

    const-wide/16 v28, 0x2

    const-wide/16 v30, 0x7

    const/16 v32, 0x34

    const-wide/16 v33, 0x3

    if-nez v2, :cond_d3

    .line 2258
    shl-long v35, v0, v32

    or-long v25, v25, v35

    .line 2259
    const/16 v2, 0x30

    .end local v24    # "nextShift":I
    .local v2, "nextShift":I
    goto :goto_101

    .line 2261
    .end local v2    # "nextShift":I
    .restart local v24    # "nextShift":I
    :cond_d3
    cmp-long v2, v0, v33

    if-gtz v2, :cond_e2

    .line 2262
    const/16 v2, 0x33

    shl-long v35, v0, v2

    or-long v25, v25, v35

    .line 2263
    const/16 v2, 0x2f

    .line 2264
    .end local v24    # "nextShift":I
    .restart local v2    # "nextShift":I
    add-long v13, v13, v17

    goto :goto_101

    .line 2265
    .end local v2    # "nextShift":I
    .restart local v24    # "nextShift":I
    :cond_e2
    cmp-long v2, v0, v30

    if-gtz v2, :cond_f1

    .line 2266
    const/16 v2, 0x32

    shl-long v35, v0, v2

    or-long v25, v25, v35

    .line 2267
    const/16 v2, 0x2e

    .line 2268
    .end local v24    # "nextShift":I
    .restart local v2    # "nextShift":I
    add-long v13, v13, v28

    goto :goto_101

    .line 2269
    .end local v2    # "nextShift":I
    .restart local v24    # "nextShift":I
    :cond_f1
    const-wide/16 v35, 0xf

    cmp-long v2, v0, v35

    if-gtz v2, :cond_318

    .line 2270
    const/16 v2, 0x31

    shl-long v35, v0, v2

    or-long v25, v25, v35

    .line 2271
    const/16 v2, 0x2d

    .line 2272
    .end local v24    # "nextShift":I
    .restart local v2    # "nextShift":I
    add-long v13, v13, v33

    .line 2295
    :goto_101
    const/16 v24, 0x0

    .line 2296
    .local v24, "i":I
    const/16 v24, 0x1

    move-wide/from16 v35, v0

    move/from16 v0, v24

    .line 2297
    .end local v24    # "i":I
    .local v0, "i":I
    .local v35, "leadingDigit":J
    :goto_109
    if-ge v0, v7, :cond_124

    if-ltz v2, :cond_124

    .line 2299
    invoke-static {v5, v0}, Lsun/misc/FloatingDecimal;->getHexDigit(Ljava/lang/String;I)I

    move-result v1

    move/from16 v37, v3

    move-object/from16 v38, v4

    .end local v3    # "validInput":Z
    .end local v4    # "group1":Ljava/lang/String;
    .local v37, "validInput":Z
    .local v38, "group1":Ljava/lang/String;
    int-to-long v3, v1

    .line 2300
    .local v3, "currentDigit":J
    shl-long v39, v3, v2

    or-long v25, v25, v39

    .line 2301
    nop

    .end local v3    # "currentDigit":J
    add-int/lit8 v2, v2, -0x4

    .line 2298
    add-int/lit8 v0, v0, 0x1

    move/from16 v3, v37

    move-object/from16 v4, v38

    goto :goto_109

    .line 2297
    .end local v37    # "validInput":Z
    .end local v38    # "group1":Ljava/lang/String;
    .local v3, "validInput":Z
    .restart local v4    # "group1":Ljava/lang/String;
    :cond_124
    move/from16 v37, v3

    move-object/from16 v38, v4

    .line 2309
    .end local v3    # "validInput":Z
    .end local v4    # "group1":Ljava/lang/String;
    .restart local v37    # "validInput":Z
    .restart local v38    # "group1":Ljava/lang/String;
    if-ge v0, v7, :cond_1d0

    .line 2310
    invoke-static {v5, v0}, Lsun/misc/FloatingDecimal;->getHexDigit(Ljava/lang/String;I)I

    move-result v1

    int-to-long v3, v1

    .line 2314
    .local v3, "currentDigit":J
    const-wide/16 v41, 0x8

    packed-switch v2, :pswitch_data_364

    .line 2347
    new-instance v1, Ljava/lang/AssertionError;

    move/from16 v24, v0

    .end local v0    # "i":I
    .restart local v24    # "i":I
    const-string v0, "Unexpected shift distance remainder."

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 2318
    .end local v24    # "i":I
    .restart local v0    # "i":I
    :pswitch_13e
    const-wide/16 v28, 0xe

    and-long v28, v3, v28

    const/4 v1, 0x1

    shr-long v28, v28, v1

    or-long v24, v25, v28

    .line 2319
    .end local v25    # "significand":J
    .local v24, "significand":J
    and-long v28, v3, v17

    const-wide/16 v30, 0x0

    cmp-long v1, v28, v30

    if-eqz v1, :cond_151

    const/4 v1, 0x1

    goto :goto_152

    :cond_151
    const/4 v1, 0x0

    .line 2320
    .end local v15    # "round":Z
    .local v1, "round":Z
    :goto_152
    move v15, v1

    move-wide/from16 v25, v24

    goto/16 :goto_1b4

    .line 2325
    .end local v1    # "round":Z
    .end local v24    # "significand":J
    .restart local v15    # "round":Z
    .restart local v25    # "significand":J
    :pswitch_157
    const-wide/16 v30, 0xc

    and-long v30, v3, v30

    const/4 v1, 0x2

    shr-long v30, v30, v1

    or-long v24, v25, v30

    .line 2326
    .end local v25    # "significand":J
    .restart local v24    # "significand":J
    and-long v28, v3, v28

    const-wide/16 v30, 0x0

    cmp-long v1, v28, v30

    if-eqz v1, :cond_16a

    const/4 v1, 0x1

    goto :goto_16b

    :cond_16a
    const/4 v1, 0x0

    .line 2327
    .end local v15    # "round":Z
    .restart local v1    # "round":Z
    :goto_16b
    and-long v28, v3, v17

    cmp-long v15, v28, v30

    if-eqz v15, :cond_173

    const/4 v15, 0x1

    goto :goto_174

    :cond_173
    const/4 v15, 0x0

    :goto_174
    move/from16 v23, v15

    .line 2328
    move v15, v1

    move-wide/from16 v25, v24

    goto :goto_1b4

    .line 2332
    .end local v1    # "round":Z
    .end local v24    # "significand":J
    .restart local v15    # "round":Z
    .restart local v25    # "significand":J
    :pswitch_17a
    and-long v28, v3, v41

    const/4 v1, 0x3

    shr-long v28, v28, v1

    or-long v24, v25, v28

    .line 2334
    .end local v25    # "significand":J
    .restart local v24    # "significand":J
    const-wide/16 v28, 0x4

    and-long v28, v3, v28

    const-wide/16 v30, 0x0

    cmp-long v1, v28, v30

    if-eqz v1, :cond_18d

    const/4 v1, 0x1

    goto :goto_18e

    :cond_18d
    const/4 v1, 0x0

    .line 2335
    .end local v15    # "round":Z
    .restart local v1    # "round":Z
    :goto_18e
    and-long v28, v3, v33

    cmp-long v15, v28, v30

    if-eqz v15, :cond_196

    const/4 v15, 0x1

    goto :goto_197

    :cond_196
    const/4 v15, 0x0

    :goto_197
    move/from16 v23, v15

    .line 2336
    move v15, v1

    move-wide/from16 v25, v24

    goto :goto_1b4

    .line 2341
    .end local v1    # "round":Z
    .end local v24    # "significand":J
    .restart local v15    # "round":Z
    .restart local v25    # "significand":J
    :pswitch_19d
    and-long v28, v3, v41

    const-wide/16 v33, 0x0

    cmp-long v1, v28, v33

    if-eqz v1, :cond_1a7

    const/4 v1, 0x1

    goto :goto_1a8

    :cond_1a7
    const/4 v1, 0x0

    .line 2343
    .end local v15    # "round":Z
    .restart local v1    # "round":Z
    :goto_1a8
    and-long v28, v3, v30

    cmp-long v15, v28, v33

    if-eqz v15, :cond_1b0

    const/4 v15, 0x1

    goto :goto_1b1

    :cond_1b0
    const/4 v15, 0x0

    :goto_1b1
    move/from16 v23, v15

    .line 2344
    move v15, v1

    .line 2356
    .end local v1    # "round":Z
    .restart local v15    # "round":Z
    :goto_1b4
    add-int/lit8 v0, v0, 0x1

    .line 2357
    :goto_1b6
    if-ge v0, v7, :cond_1d2

    if-nez v23, :cond_1d2

    .line 2358
    invoke-static {v5, v0}, Lsun/misc/FloatingDecimal;->getHexDigit(Ljava/lang/String;I)I

    move-result v1

    int-to-long v3, v1

    .line 2359
    if-nez v23, :cond_1ca

    const-wide/16 v28, 0x0

    cmp-long v1, v3, v28

    if-eqz v1, :cond_1c8

    goto :goto_1ca

    :cond_1c8
    const/4 v1, 0x0

    goto :goto_1cb

    :cond_1ca
    :goto_1ca
    const/4 v1, 0x1

    :goto_1cb
    move/from16 v23, v1

    .line 2360
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b6

    .line 2309
    .end local v3    # "currentDigit":J
    :cond_1d0
    move/from16 v24, v0

    .line 2368
    :cond_1d2
    if-eqz v6, :cond_1d7

    const/high16 v1, -0x80000000

    goto :goto_1d8

    :cond_1d7
    const/4 v1, 0x0

    .line 2369
    .local v1, "floatBits":I
    :goto_1d8
    const-wide/16 v3, -0x7e

    cmp-long v3, v13, v3

    if-ltz v3, :cond_221

    .line 2370
    const-wide/16 v3, 0x7f

    cmp-long v3, v13, v3

    if-lez v3, :cond_1ef

    .line 2372
    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    or-int/2addr v1, v3

    move/from16 v24, v0

    move/from16 v28, v7

    move/from16 v29, v8

    goto/16 :goto_257

    .line 2374
    :cond_1ef
    const/16 v3, 0x1c

    .line 2375
    .local v3, "threshShift":I
    shl-long v28, v17, v3

    sub-long v28, v28, v17

    and-long v28, v25, v28

    const-wide/16 v30, 0x0

    cmp-long v4, v28, v30

    if-nez v4, :cond_204

    if-nez v15, :cond_204

    if-eqz v23, :cond_202

    goto :goto_204

    :cond_202
    const/4 v4, 0x0

    goto :goto_205

    :cond_204
    :goto_204
    const/4 v4, 0x1

    .line 2376
    .local v4, "floatSticky":Z
    :goto_205
    move/from16 v28, v7

    move/from16 v29, v8

    .end local v7    # "signifLength":I
    .end local v8    # "exponentAdjust":I
    .local v28, "signifLength":I
    .local v29, "exponentAdjust":I
    ushr-long v7, v25, v3

    long-to-int v7, v7

    .line 2377
    .local v7, "iValue":I
    and-int/lit8 v8, v7, 0x3

    move/from16 v24, v0

    const/4 v0, 0x1

    .end local v0    # "i":I
    .local v24, "i":I
    if-ne v8, v0, :cond_215

    if-eqz v4, :cond_217

    .line 2378
    :cond_215
    add-int/lit8 v7, v7, 0x1

    .line 2380
    :cond_217
    long-to-int v0, v13

    add-int/lit8 v0, v0, 0x7e

    shl-int/lit8 v0, v0, 0x17

    shr-int/lit8 v8, v7, 0x1

    add-int/2addr v0, v8

    or-int/2addr v1, v0

    .line 2381
    .end local v3    # "threshShift":I
    .end local v4    # "floatSticky":Z
    .end local v7    # "iValue":I
    goto :goto_257

    .line 2383
    .end local v24    # "i":I
    .end local v28    # "signifLength":I
    .end local v29    # "exponentAdjust":I
    .restart local v0    # "i":I
    .local v7, "signifLength":I
    .restart local v8    # "exponentAdjust":I
    :cond_221
    move/from16 v24, v0

    move/from16 v28, v7

    move/from16 v29, v8

    .end local v0    # "i":I
    .end local v7    # "signifLength":I
    .end local v8    # "exponentAdjust":I
    .restart local v24    # "i":I
    .restart local v28    # "signifLength":I
    .restart local v29    # "exponentAdjust":I
    const-wide/16 v3, -0x96

    cmp-long v0, v13, v3

    if-gez v0, :cond_22e

    goto :goto_257

    .line 2387
    :cond_22e
    const-wide/16 v3, -0x62

    sub-long/2addr v3, v13

    long-to-int v0, v3

    .line 2388
    .local v0, "threshShift":I
    nop

    .line 2389
    nop

    .line 2390
    shl-long v3, v17, v0

    sub-long v3, v3, v17

    and-long v3, v25, v3

    const-wide/16 v7, 0x0

    cmp-long v3, v3, v7

    if-nez v3, :cond_247

    if-nez v15, :cond_247

    if-eqz v23, :cond_245

    goto :goto_247

    :cond_245
    const/4 v3, 0x0

    goto :goto_248

    :cond_247
    :goto_247
    const/4 v3, 0x1

    .line 2391
    .local v3, "floatSticky":Z
    :goto_248
    ushr-long v7, v25, v0

    long-to-int v4, v7

    .line 2392
    .local v4, "iValue":I
    and-int/lit8 v7, v4, 0x3

    const/4 v8, 0x1

    if-ne v7, v8, :cond_252

    if-eqz v3, :cond_254

    .line 2393
    :cond_252
    add-int/lit8 v4, v4, 0x1

    .line 2395
    :cond_254
    shr-int/lit8 v7, v4, 0x1

    or-int/2addr v1, v7

    .line 2398
    .end local v0    # "threshShift":I
    .end local v3    # "floatSticky":Z
    .end local v4    # "iValue":I
    :goto_257
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 2401
    .local v0, "fValue":F
    const-wide/16 v3, 0x3ff

    cmp-long v7, v13, v3

    if-lez v7, :cond_269

    .line 2403
    if-eqz v6, :cond_266

    sget-object v3, Lsun/misc/FloatingDecimal;->A2BC_NEGATIVE_INFINITY:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    goto :goto_268

    :cond_266
    sget-object v3, Lsun/misc/FloatingDecimal;->A2BC_POSITIVE_INFINITY:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    :goto_268
    return-object v3

    .line 2405
    :cond_269
    cmp-long v7, v13, v3

    const-wide v30, 0xfffffffffffffL

    if-gtz v7, :cond_288

    const-wide/16 v7, -0x3fe

    cmp-long v7, v13, v7

    if-ltz v7, :cond_288

    .line 2419
    add-long/2addr v3, v13

    shl-long v3, v3, v32

    const-wide/high16 v7, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v3, v7

    and-long v7, v25, v30

    or-long/2addr v3, v7

    move-object/from16 v27, v5

    move/from16 v5, v23

    const-wide/16 v25, 0x0

    .end local v25    # "significand":J
    .local v3, "significand":J
    goto :goto_2e2

    .line 2428
    .end local v3    # "significand":J
    .restart local v25    # "significand":J
    :cond_288
    const-wide/16 v3, -0x433

    cmp-long v3, v13, v3

    if-gez v3, :cond_296

    .line 2432
    if-eqz v6, :cond_293

    sget-object v3, Lsun/misc/FloatingDecimal;->A2BC_NEGATIVE_ZERO:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    goto :goto_295

    :cond_293
    sget-object v3, Lsun/misc/FloatingDecimal;->A2BC_POSITIVE_ZERO:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    :goto_295
    return-object v3

    .line 2440
    :cond_296
    if-nez v23, :cond_29d

    if-eqz v15, :cond_29b

    goto :goto_29d

    :cond_29b
    const/4 v3, 0x0

    goto :goto_29e

    :cond_29d
    :goto_29d
    const/4 v3, 0x1

    .line 2441
    .end local v23    # "sticky":Z
    .local v3, "sticky":Z
    :goto_29e
    const/4 v4, 0x0

    .line 2449
    .end local v15    # "round":Z
    .local v4, "round":Z
    long-to-int v7, v13

    add-int/lit16 v7, v7, 0x432

    const/4 v8, 0x1

    add-int/2addr v7, v8

    rsub-int/lit8 v7, v7, 0x35

    .line 2451
    .local v7, "bitsDiscarded":I
    nop

    .line 2455
    add-int/lit8 v8, v7, -0x1

    shl-long v32, v17, v8

    and-long v32, v25, v32

    const-wide/16 v39, 0x0

    cmp-long v8, v32, v39

    if-eqz v8, :cond_2b5

    const/4 v8, 0x1

    goto :goto_2b6

    :cond_2b5
    const/4 v8, 0x0

    :goto_2b6
    move v15, v8

    .line 2456
    .end local v4    # "round":Z
    .restart local v15    # "round":Z
    const/4 v4, 0x1

    if-le v7, v4, :cond_2d3

    .line 2459
    add-int/lit8 v8, v7, -0x1

    move-object/from16 v27, v5

    const-wide/16 v21, -0x1

    .end local v5    # "significandString":Ljava/lang/String;
    .local v27, "significandString":Ljava/lang/String;
    shl-long v4, v21, v8

    not-long v4, v4

    .line 2460
    .local v4, "mask":J
    if-nez v3, :cond_2d0

    and-long v21, v25, v4

    const-wide/16 v32, 0x0

    cmp-long v8, v21, v32

    if-eqz v8, :cond_2ce

    goto :goto_2d0

    :cond_2ce
    const/4 v8, 0x0

    goto :goto_2d1

    :cond_2d0
    :goto_2d0
    const/4 v8, 0x1

    :goto_2d1
    move v3, v8

    goto :goto_2d5

    .line 2456
    .end local v4    # "mask":J
    .end local v27    # "significandString":Ljava/lang/String;
    .restart local v5    # "significandString":Ljava/lang/String;
    :cond_2d3
    move-object/from16 v27, v5

    .line 2464
    .end local v5    # "significandString":Ljava/lang/String;
    .restart local v27    # "significandString":Ljava/lang/String;
    :goto_2d5
    shr-long v4, v25, v7

    .line 2466
    .end local v25    # "significand":J
    .local v4, "significand":J
    and-long v21, v4, v30

    const-wide/16 v25, 0x0

    or-long v4, v21, v25

    move-wide/from16 v43, v4

    move v5, v3

    move-wide/from16 v3, v43

    .line 2498
    .end local v4    # "significand":J
    .end local v7    # "bitsDiscarded":I
    .local v3, "significand":J
    .local v5, "sticky":Z
    :goto_2e2
    and-long v7, v3, v17

    cmp-long v7, v7, v25

    if-nez v7, :cond_2eb

    const/16 v23, 0x1

    goto :goto_2ed

    :cond_2eb
    const/16 v23, 0x0

    :goto_2ed
    move/from16 v7, v23

    .line 2499
    .local v7, "leastZero":Z
    if-eqz v7, :cond_2f5

    if-eqz v15, :cond_2f5

    if-nez v5, :cond_2f9

    :cond_2f5
    if-nez v7, :cond_2fb

    if-eqz v15, :cond_2fb

    .line 2501
    :cond_2f9
    add-long v3, v3, v17

    .line 2504
    :cond_2fb
    if-eqz v6, :cond_306

    .line 2505
    const-wide/high16 v17, -0x8000000000000000L

    or-long v17, v3, v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v17

    goto :goto_30a

    .line 2506
    :cond_306
    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v17

    :goto_30a
    move-wide/from16 v21, v17

    .line 2508
    .local v21, "value":D
    new-instance v8, Lsun/misc/FloatingDecimal$PreparedASCIIToBinaryBuffer;

    move/from16 v18, v1

    move/from16 v17, v2

    move-wide/from16 v1, v21

    .end local v2    # "nextShift":I
    .end local v21    # "value":D
    .local v1, "value":D
    .local v17, "nextShift":I
    .local v18, "floatBits":I
    invoke-direct {v8, v1, v2, v0}, Lsun/misc/FloatingDecimal$PreparedASCIIToBinaryBuffer;-><init>(DF)V

    return-object v8

    .line 2274
    .end local v1    # "value":D
    .end local v17    # "nextShift":I
    .end local v18    # "floatBits":I
    .end local v27    # "significandString":Ljava/lang/String;
    .end local v28    # "signifLength":I
    .end local v29    # "exponentAdjust":I
    .end local v35    # "leadingDigit":J
    .end local v37    # "validInput":Z
    .end local v38    # "group1":Ljava/lang/String;
    .local v0, "leadingDigit":J
    .local v3, "validInput":Z
    .local v4, "group1":Ljava/lang/String;
    .local v5, "significandString":Ljava/lang/String;
    .local v7, "signifLength":I
    .restart local v8    # "exponentAdjust":I
    .restart local v23    # "sticky":Z
    .local v24, "nextShift":I
    .restart local v25    # "significand":J
    :cond_318
    move-wide/from16 v35, v0

    .end local v0    # "leadingDigit":J
    .restart local v35    # "leadingDigit":J
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Result from digit conversion too large!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2205
    .end local v11    # "unsignedRawExponent":J
    .end local v13    # "exponent":J
    .end local v15    # "round":Z
    .end local v16    # "m":Ljava/util/regex/Matcher;
    .end local v19    # "rawExponent":J
    .end local v23    # "sticky":Z
    .end local v24    # "nextShift":I
    .end local v25    # "significand":J
    .end local v35    # "leadingDigit":J
    .local v2, "m":Ljava/util/regex/Matcher;
    :catch_322
    move-exception v0

    move-object/from16 v16, v2

    move/from16 v37, v3

    move-object/from16 v38, v4

    move-object/from16 v27, v5

    move/from16 v28, v7

    move/from16 v29, v8

    .line 2219
    .end local v2    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "validInput":Z
    .end local v4    # "group1":Ljava/lang/String;
    .end local v5    # "significandString":Ljava/lang/String;
    .end local v7    # "signifLength":I
    .end local v8    # "exponentAdjust":I
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v16    # "m":Ljava/util/regex/Matcher;
    .restart local v27    # "significandString":Ljava/lang/String;
    .restart local v28    # "signifLength":I
    .restart local v29    # "exponentAdjust":I
    .restart local v37    # "validInput":Z
    .restart local v38    # "group1":Ljava/lang/String;
    if-eqz v6, :cond_339

    .line 2220
    if-eqz v10, :cond_336

    sget-object v1, Lsun/misc/FloatingDecimal;->A2BC_NEGATIVE_INFINITY:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    goto :goto_340

    :cond_336
    sget-object v1, Lsun/misc/FloatingDecimal;->A2BC_NEGATIVE_ZERO:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    goto :goto_340

    .line 2221
    :cond_339
    if-eqz v10, :cond_33e

    sget-object v1, Lsun/misc/FloatingDecimal;->A2BC_POSITIVE_INFINITY:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    goto :goto_340

    :cond_33e
    sget-object v1, Lsun/misc/FloatingDecimal;->A2BC_POSITIVE_ZERO:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    .line 2219
    :goto_340
    return-object v1

    .line 2071
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "isNegative":Z
    .end local v9    # "group8":Ljava/lang/String;
    .end local v10    # "positiveExponent":Z
    .end local v16    # "m":Ljava/util/regex/Matcher;
    .end local v27    # "significandString":Ljava/lang/String;
    .end local v28    # "signifLength":I
    .end local v29    # "exponentAdjust":I
    .end local v37    # "validInput":Z
    .end local v38    # "group1":Ljava/lang/String;
    .restart local v2    # "m":Ljava/util/regex/Matcher;
    .restart local v3    # "validInput":Z
    :cond_341
    move-object/from16 v16, v2

    move/from16 v37, v3

    .end local v2    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "validInput":Z
    .restart local v16    # "m":Ljava/util/regex/Matcher;
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

    nop

    :pswitch_data_364
    .packed-switch -0x4
        :pswitch_19d
        :pswitch_17a
        :pswitch_157
        :pswitch_13e
    .end packed-switch
.end method

.method static blacklist readJavaFormatString(Ljava/lang/String;)Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;
    .registers 24
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
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_6} :catch_1a0

    move-object v3, v0

    .line 1840
    .end local p0    # "in":Ljava/lang/String;
    .local v3, "in":Ljava/lang/String;
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    .line 1841
    .local v0, "len":I
    if-eqz v0, :cond_196

    .line 1844
    const/4 v4, 0x0

    .line 1845
    .local v4, "i":I
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5
    :try_end_12
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_7 .. :try_end_12} :catch_19e

    packed-switch v5, :pswitch_data_1c0

    :pswitch_15
    goto :goto_1a

    .line 1847
    :pswitch_16
    const/4 v1, 0x1

    .line 1850
    :pswitch_17
    add-int/lit8 v4, v4, 0x1

    .line 1851
    const/4 v2, 0x1

    .line 1853
    :goto_1a
    :try_start_1a
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5
    :try_end_1e
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1a .. :try_end_1e} :catch_192

    .line 1854
    .local v5, "c":C
    const/16 v6, 0x4e

    if-ne v5, v6, :cond_37

    .line 1855
    sub-int v6, v0, v4

    :try_start_24
    sget v7, Lsun/misc/FloatingDecimal;->NAN_LENGTH:I

    if-ne v6, v7, :cond_33

    const-string v6, "NaN"

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_33

    .line 1856
    sget-object v6, Lsun/misc/FloatingDecimal;->A2BC_NOT_A_NUMBER:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    return-object v6

    .line 1859
    :cond_33
    move/from16 v17, v2

    goto/16 :goto_17b

    .line 1860
    :cond_37
    const/16 v6, 0x49

    if-ne v5, v6, :cond_55

    .line 1861
    sub-int v6, v0, v4

    sget v7, Lsun/misc/FloatingDecimal;->INFINITY_LENGTH:I

    if-ne v6, v7, :cond_51

    const-string v6, "Infinity"

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_51

    .line 1862
    if-eqz v1, :cond_4e

    sget-object v6, Lsun/misc/FloatingDecimal;->A2BC_NEGATIVE_INFINITY:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    goto :goto_50

    :cond_4e
    sget-object v6, Lsun/misc/FloatingDecimal;->A2BC_POSITIVE_INFINITY:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    :goto_50
    return-object v6

    .line 1865
    :cond_51
    move/from16 v17, v2

    goto/16 :goto_17b

    .line 1866
    :cond_55
    const/16 v6, 0x30

    if-ne v5, v6, :cond_70

    .line 1867
    add-int/lit8 v7, v4, 0x1

    if-le v0, v7, :cond_70

    .line 1868
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 1869
    .local v7, "ch":C
    const/16 v8, 0x78

    if-eq v7, v8, :cond_6b

    const/16 v8, 0x58

    if-ne v7, v8, :cond_70

    .line 1870
    :cond_6b
    invoke-static {v3}, Lsun/misc/FloatingDecimal;->parseHexString(Ljava/lang/String;)Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    move-result-object v6
    :try_end_6f
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_24 .. :try_end_6f} :catch_19e

    return-object v6

    .line 1875
    .end local v7    # "ch":C
    :cond_70
    :try_start_70
    new-array v7, v0, [C
    :try_end_72
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_70 .. :try_end_72} :catch_192

    .line 1876
    .local v7, "digits":[C
    const/4 v8, 0x0

    .line 1877
    .local v8, "nDigits":I
    const/4 v9, 0x0

    .line 1878
    .local v9, "decSeen":Z
    const/4 v10, 0x0

    .line 1879
    .local v10, "decPt":I
    const/4 v11, 0x0

    .line 1880
    .local v11, "nLeadZero":I
    const/4 v12, 0x0

    .line 1883
    .local v12, "nTrailZero":I
    :goto_77
    const-string v13, "multiple points"

    const/16 v14, 0x2e

    if-ge v4, v0, :cond_9a

    .line 1884
    :try_start_7d
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move v5, v15

    .line 1885
    if-ne v5, v6, :cond_87

    .line 1886
    add-int/lit8 v11, v11, 0x1

    goto :goto_91

    .line 1887
    :cond_87
    if-ne v5, v14, :cond_9a

    .line 1888
    if-nez v9, :cond_94

    .line 1892
    move v10, v4

    .line 1893
    if-eqz v2, :cond_90

    .line 1894
    add-int/lit8 v10, v10, -0x1

    .line 1896
    :cond_90
    const/4 v9, 0x1

    .line 1900
    :goto_91
    add-int/lit8 v4, v4, 0x1

    goto :goto_77

    .line 1890
    :cond_94
    new-instance v6, Ljava/lang/NumberFormatException;

    invoke-direct {v6, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .end local v1    # "isNegative":Z
    .end local v2    # "signSeen":Z
    .end local v3    # "in":Ljava/lang/String;
    throw v6

    .line 1903
    .restart local v1    # "isNegative":Z
    .restart local v2    # "signSeen":Z
    .restart local v3    # "in":Ljava/lang/String;
    :cond_9a
    :goto_9a
    const/16 v15, 0x39

    if-ge v4, v0, :cond_d5

    .line 1904
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v16

    move/from16 v5, v16

    .line 1905
    const/16 v14, 0x31

    if-lt v5, v14, :cond_b4

    if-gt v5, v15, :cond_b4

    .line 1906
    add-int/lit8 v14, v8, 0x1

    .end local v8    # "nDigits":I
    .local v14, "nDigits":I
    aput-char v5, v7, v8

    .line 1907
    const/4 v8, 0x0

    move v12, v8

    move v8, v14

    const/16 v14, 0x2e

    .end local v12    # "nTrailZero":I
    .local v8, "nTrailZero":I
    goto :goto_cc

    .line 1908
    .end local v14    # "nDigits":I
    .local v8, "nDigits":I
    .restart local v12    # "nTrailZero":I
    :cond_b4
    if-ne v5, v6, :cond_c0

    .line 1909
    add-int/lit8 v14, v8, 0x1

    .end local v8    # "nDigits":I
    .restart local v14    # "nDigits":I
    aput-char v5, v7, v8

    .line 1910
    add-int/lit8 v12, v12, 0x1

    move v8, v14

    const/16 v14, 0x2e

    goto :goto_cc

    .line 1911
    .end local v14    # "nDigits":I
    .restart local v8    # "nDigits":I
    :cond_c0
    const/16 v14, 0x2e

    if-ne v5, v14, :cond_d5

    .line 1912
    if-nez v9, :cond_cf

    .line 1916
    move v10, v4

    .line 1917
    if-eqz v2, :cond_cb

    .line 1918
    add-int/lit8 v10, v10, -0x1

    .line 1920
    :cond_cb
    const/4 v9, 0x1

    .line 1924
    :goto_cc
    add-int/lit8 v4, v4, 0x1

    goto :goto_9a

    .line 1914
    :cond_cf
    new-instance v6, Ljava/lang/NumberFormatException;

    invoke-direct {v6, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .end local v1    # "isNegative":Z
    .end local v2    # "signSeen":Z
    .end local v3    # "in":Ljava/lang/String;
    throw v6
    :try_end_d5
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_7d .. :try_end_d5} :catch_19e

    .line 1926
    .restart local v1    # "isNegative":Z
    .restart local v2    # "signSeen":Z
    .restart local v3    # "in":Ljava/lang/String;
    :cond_d5
    sub-int/2addr v8, v12

    .line 1946
    if-nez v8, :cond_da

    const/4 v13, 0x1

    goto :goto_db

    :cond_da
    const/4 v13, 0x0

    .line 1947
    .local v13, "isZero":Z
    :goto_db
    if-eqz v13, :cond_e4

    if-eqz v11, :cond_e0

    goto :goto_e4

    .line 1951
    :cond_e0
    move/from16 v17, v2

    goto/16 :goto_17b

    .line 1958
    :cond_e4
    :goto_e4
    if-eqz v9, :cond_e9

    .line 1959
    sub-int v14, v10, v11

    .local v14, "decExp":I
    goto :goto_eb

    .line 1961
    .end local v14    # "decExp":I
    :cond_e9
    add-int v14, v8, v12

    .line 1967
    .restart local v14    # "decExp":I
    :goto_eb
    if-ge v4, v0, :cond_151

    :try_start_ed
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v15
    :try_end_f1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_ed .. :try_end_f1} :catch_192

    move v5, v15

    const/16 v6, 0x65

    if-eq v15, v6, :cond_fe

    const/16 v6, 0x45

    if-ne v5, v6, :cond_fb

    goto :goto_fe

    :cond_fb
    move/from16 v17, v2

    goto :goto_153

    .line 1968
    :cond_fe
    :goto_fe
    const/4 v6, 0x1

    .line 1969
    .local v6, "expSign":I
    const/4 v15, 0x0

    .line 1970
    .local v15, "expVal":I
    move/from16 v17, v2

    .end local v2    # "signSeen":Z
    .local v17, "signSeen":Z
    const v2, 0xccccccc

    .line 1971
    .local v2, "reallyBig":I
    const/16 v18, 0x0

    .line 1972
    .local v18, "expOverflow":Z
    add-int/lit8 v4, v4, 0x1

    :try_start_109
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v19

    packed-switch v19, :pswitch_data_1ca

    :pswitch_110
    goto :goto_114

    .line 1974
    :pswitch_111
    const/4 v6, -0x1

    .line 1977
    :pswitch_112
    add-int/lit8 v4, v4, 0x1

    .line 1979
    :goto_114
    move/from16 v19, v4

    .line 1981
    .local v19, "expAt":I
    :goto_116
    if-ge v4, v0, :cond_138

    .line 1982
    if-lt v15, v2, :cond_11c

    .line 1985
    const/16 v18, 0x1

    .line 1987
    :cond_11c
    add-int/lit8 v20, v4, 0x1

    .end local v4    # "i":I
    .local v20, "i":I
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v5, v4

    .line 1988
    const/16 v4, 0x30

    if-lt v5, v4, :cond_134

    const/16 v4, 0x39

    if-gt v5, v4, :cond_134

    .line 1989
    mul-int/lit8 v21, v15, 0xa

    add-int/lit8 v22, v5, -0x30

    add-int v15, v21, v22

    move/from16 v4, v20

    goto :goto_116

    .line 1991
    :cond_134
    add-int/lit8 v20, v20, -0x1

    .line 1992
    move/from16 v4, v20

    .line 1995
    .end local v20    # "i":I
    .restart local v4    # "i":I
    :cond_138
    move/from16 p0, v2

    .end local v2    # "reallyBig":I
    .local p0, "reallyBig":I
    add-int/lit16 v2, v8, 0x144

    add-int/2addr v2, v12

    .line 1996
    .local v2, "expLimit":I
    if-nez v18, :cond_147

    if-le v15, v2, :cond_142

    goto :goto_147

    .line 2013
    :cond_142
    mul-int v16, v6, v15

    add-int v14, v14, v16

    goto :goto_149

    .line 2009
    :cond_147
    :goto_147
    mul-int v14, v6, v2

    .line 2022
    :goto_149
    move/from16 v16, v2

    move/from16 v2, v19

    .end local v19    # "expAt":I
    .local v2, "expAt":I
    .local v16, "expLimit":I
    if-eq v4, v2, :cond_150

    goto :goto_153

    .line 2023
    :cond_150
    goto :goto_17b

    .line 1967
    .end local v6    # "expSign":I
    .end local v15    # "expVal":I
    .end local v16    # "expLimit":I
    .end local v17    # "signSeen":Z
    .end local v18    # "expOverflow":Z
    .end local p0    # "reallyBig":I
    .local v2, "signSeen":Z
    :cond_151
    move/from16 v17, v2

    .line 2030
    .end local v2    # "signSeen":Z
    .restart local v17    # "signSeen":Z
    :goto_153
    if-ge v4, v0, :cond_17e

    add-int/lit8 v2, v0, -0x1

    if-ne v4, v2, :cond_17a

    .line 2032
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v6, 0x66

    if-eq v2, v6, :cond_17e

    .line 2033
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v6, 0x46

    if-eq v2, v6, :cond_17e

    .line 2034
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v6, 0x64

    if-eq v2, v6, :cond_17e

    .line 2035
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v6, 0x44

    if-ne v2, v6, :cond_17a

    goto :goto_17e

    .line 2036
    :cond_17a
    nop

    .line 2043
    .end local v0    # "len":I
    .end local v4    # "i":I
    .end local v5    # "c":C
    .end local v7    # "digits":[C
    .end local v8    # "nDigits":I
    .end local v9    # "decSeen":Z
    .end local v10    # "decPt":I
    .end local v11    # "nLeadZero":I
    .end local v12    # "nTrailZero":I
    .end local v13    # "isZero":Z
    .end local v14    # "decExp":I
    .end local v17    # "signSeen":Z
    .restart local v2    # "signSeen":Z
    :goto_17b
    move/from16 v2, v17

    .end local v2    # "signSeen":Z
    .restart local v17    # "signSeen":Z
    goto :goto_1a3

    .line 2038
    .restart local v0    # "len":I
    .restart local v4    # "i":I
    .restart local v5    # "c":C
    .restart local v7    # "digits":[C
    .restart local v8    # "nDigits":I
    .restart local v9    # "decSeen":Z
    .restart local v10    # "decPt":I
    .restart local v11    # "nLeadZero":I
    .restart local v12    # "nTrailZero":I
    .restart local v13    # "isZero":Z
    .restart local v14    # "decExp":I
    :cond_17e
    :goto_17e
    if-eqz v13, :cond_188

    .line 2039
    if-eqz v1, :cond_185

    sget-object v2, Lsun/misc/FloatingDecimal;->A2BC_NEGATIVE_ZERO:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    goto :goto_187

    :cond_185
    sget-object v2, Lsun/misc/FloatingDecimal;->A2BC_POSITIVE_ZERO:Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;

    :goto_187
    return-object v2

    .line 2041
    :cond_188
    new-instance v2, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;

    invoke-direct {v2, v1, v14, v7, v8}, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;-><init>(ZI[CI)V
    :try_end_18d
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_109 .. :try_end_18d} :catch_18e

    return-object v2

    .line 2042
    .end local v0    # "len":I
    .end local v4    # "i":I
    .end local v5    # "c":C
    .end local v7    # "digits":[C
    .end local v8    # "nDigits":I
    .end local v9    # "decSeen":Z
    .end local v10    # "decPt":I
    .end local v11    # "nLeadZero":I
    .end local v12    # "nTrailZero":I
    .end local v13    # "isZero":Z
    .end local v14    # "decExp":I
    :catch_18e
    move-exception v0

    move/from16 v2, v17

    goto :goto_1a3

    .end local v17    # "signSeen":Z
    .restart local v2    # "signSeen":Z
    :catch_192
    move-exception v0

    move/from16 v17, v2

    .end local v2    # "signSeen":Z
    .restart local v17    # "signSeen":Z
    goto :goto_1a3

    .line 1842
    .end local v17    # "signSeen":Z
    .restart local v0    # "len":I
    .restart local v2    # "signSeen":Z
    :cond_196
    :try_start_196
    new-instance v4, Ljava/lang/NumberFormatException;

    const-string v5, "empty String"

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .end local v1    # "isNegative":Z
    .end local v2    # "signSeen":Z
    .end local v3    # "in":Ljava/lang/String;
    throw v4
    :try_end_19e
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_196 .. :try_end_19e} :catch_19e

    .line 2042
    .end local v0    # "len":I
    .restart local v1    # "isNegative":Z
    .restart local v2    # "signSeen":Z
    .restart local v3    # "in":Ljava/lang/String;
    :catch_19e
    move-exception v0

    goto :goto_1a3

    .end local v3    # "in":Ljava/lang/String;
    .local p0, "in":Ljava/lang/String;
    :catch_1a0
    move-exception v0

    move-object/from16 v3, p0

    .line 2043
    .end local p0    # "in":Ljava/lang/String;
    .restart local v3    # "in":Ljava/lang/String;
    :goto_1a3
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

    nop

    :pswitch_data_1c0
    .packed-switch 0x2b
        :pswitch_17
        :pswitch_15
        :pswitch_16
    .end packed-switch

    :pswitch_data_1ca
    .packed-switch 0x2b
        :pswitch_112
        :pswitch_110
        :pswitch_111
    .end packed-switch
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
