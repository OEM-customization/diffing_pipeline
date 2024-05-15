.class Ljava/util/Formatter$Conversion;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Formatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Conversion"
.end annotation


# static fields
.field static final BOOLEAN:C = 'b'

.field static final BOOLEAN_UPPER:C = 'B'

.field static final CHARACTER:C = 'c'

.field static final CHARACTER_UPPER:C = 'C'

.field static final DATE_TIME:C = 't'

.field static final DATE_TIME_UPPER:C = 'T'

.field static final DECIMAL_FLOAT:C = 'f'

.field static final DECIMAL_INTEGER:C = 'd'

.field static final GENERAL:C = 'g'

.field static final GENERAL_UPPER:C = 'G'

.field static final HASHCODE:C = 'h'

.field static final HASHCODE_UPPER:C = 'H'

.field static final HEXADECIMAL_FLOAT:C = 'a'

.field static final HEXADECIMAL_FLOAT_UPPER:C = 'A'

.field static final HEXADECIMAL_INTEGER:C = 'x'

.field static final HEXADECIMAL_INTEGER_UPPER:C = 'X'

.field static final LINE_SEPARATOR:C = 'n'

.field static final OCTAL_INTEGER:C = 'o'

.field static final PERCENT_SIGN:C = '%'

.field static final SCIENTIFIC:C = 'e'

.field static final SCIENTIFIC_UPPER:C = 'E'

.field static final STRING:C = 's'

.field static final STRING_UPPER:C = 'S'


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 4593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isCharacter(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 4657
    sparse-switch p0, :sswitch_data_8

    .line 4662
    const/4 v0, 0x0

    return v0

    .line 4660
    :sswitch_5
    const/4 v0, 0x1

    return v0

    .line 4657
    nop

    :sswitch_data_8
    .sparse-switch
        0x43 -> :sswitch_5
        0x63 -> :sswitch_5
    .end sparse-switch
.end method

.method static isFloat(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 4681
    sparse-switch p0, :sswitch_data_8

    .line 4691
    const/4 v0, 0x0

    return v0

    .line 4689
    :sswitch_5
    const/4 v0, 0x1

    return v0

    .line 4681
    nop

    :sswitch_data_8
    .sparse-switch
        0x41 -> :sswitch_5
        0x45 -> :sswitch_5
        0x47 -> :sswitch_5
        0x61 -> :sswitch_5
        0x65 -> :sswitch_5
        0x66 -> :sswitch_5
        0x67 -> :sswitch_5
    .end sparse-switch
.end method

.method static isGeneral(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 4642
    sparse-switch p0, :sswitch_data_8

    .line 4651
    const/4 v0, 0x0

    return v0

    .line 4649
    :sswitch_5
    const/4 v0, 0x1

    return v0

    .line 4642
    nop

    :sswitch_data_8
    .sparse-switch
        0x42 -> :sswitch_5
        0x48 -> :sswitch_5
        0x53 -> :sswitch_5
        0x62 -> :sswitch_5
        0x68 -> :sswitch_5
        0x73 -> :sswitch_5
    .end sparse-switch
.end method

.method static isInteger(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 4668
    sparse-switch p0, :sswitch_data_8

    .line 4675
    const/4 v0, 0x0

    return v0

    .line 4673
    :sswitch_5
    const/4 v0, 0x1

    return v0

    .line 4668
    nop

    :sswitch_data_8
    .sparse-switch
        0x58 -> :sswitch_5
        0x64 -> :sswitch_5
        0x6f -> :sswitch_5
        0x78 -> :sswitch_5
    .end sparse-switch
.end method

.method static isText(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 4697
    sparse-switch p0, :sswitch_data_8

    .line 4702
    const/4 v0, 0x0

    return v0

    .line 4700
    :sswitch_5
    const/4 v0, 0x1

    return v0

    .line 4697
    nop

    :sswitch_data_8
    .sparse-switch
        0x25 -> :sswitch_5
        0x6e -> :sswitch_5
    .end sparse-switch
.end method

.method static isValid(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 4636
    invoke-static {p0}, Ljava/util/Formatter$Conversion;->isGeneral(C)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {p0}, Ljava/util/Formatter$Conversion;->isInteger(C)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {p0}, Ljava/util/Formatter$Conversion;->isFloat(C)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {p0}, Ljava/util/Formatter$Conversion;->isText(C)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 4637
    const/16 v0, 0x74

    if-ne p0, v0, :cond_1e

    .line 4636
    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    .line 4637
    :cond_1e
    invoke-static {p0}, Ljava/util/Formatter$Conversion;->isCharacter(C)Z

    move-result v0

    goto :goto_1d
.end method
