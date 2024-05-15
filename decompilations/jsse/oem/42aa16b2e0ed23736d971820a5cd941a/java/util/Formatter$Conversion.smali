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
.field static final greylist-max-o BOOLEAN:C = 'b'

.field static final greylist-max-o BOOLEAN_UPPER:C = 'B'

.field static final greylist-max-o CHARACTER:C = 'c'

.field static final greylist-max-o CHARACTER_UPPER:C = 'C'

.field static final greylist-max-o DATE_TIME:C = 't'

.field static final greylist-max-o DATE_TIME_UPPER:C = 'T'

.field static final greylist-max-o DECIMAL_FLOAT:C = 'f'

.field static final greylist-max-o DECIMAL_INTEGER:C = 'd'

.field static final greylist-max-o GENERAL:C = 'g'

.field static final greylist-max-o GENERAL_UPPER:C = 'G'

.field static final greylist-max-o HASHCODE:C = 'h'

.field static final greylist-max-o HASHCODE_UPPER:C = 'H'

.field static final greylist-max-o HEXADECIMAL_FLOAT:C = 'a'

.field static final greylist-max-o HEXADECIMAL_FLOAT_UPPER:C = 'A'

.field static final greylist-max-o HEXADECIMAL_INTEGER:C = 'x'

.field static final greylist-max-o HEXADECIMAL_INTEGER_UPPER:C = 'X'

.field static final greylist-max-o LINE_SEPARATOR:C = 'n'

.field static final greylist-max-o OCTAL_INTEGER:C = 'o'

.field static final greylist-max-o PERCENT_SIGN:C = '%'

.field static final greylist-max-o SCIENTIFIC:C = 'e'

.field static final greylist-max-o SCIENTIFIC_UPPER:C = 'E'

.field static final greylist-max-o STRING:C = 's'

.field static final greylist-max-o STRING_UPPER:C = 'S'


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 4595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static greylist-max-o isCharacter(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 4659
    const/16 v0, 0x43

    if-eq p0, v0, :cond_a

    const/16 v0, 0x63

    if-eq p0, v0, :cond_a

    .line 4664
    const/4 v0, 0x0

    return v0

    .line 4662
    :cond_a
    const/4 v0, 0x1

    return v0
.end method

.method static greylist-max-o isFloat(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 4683
    const/16 v0, 0x41

    if-eq p0, v0, :cond_15

    const/16 v0, 0x45

    if-eq p0, v0, :cond_15

    const/16 v0, 0x47

    if-eq p0, v0, :cond_15

    const/16 v0, 0x61

    if-eq p0, v0, :cond_15

    packed-switch p0, :pswitch_data_18

    .line 4693
    const/4 v0, 0x0

    return v0

    .line 4691
    :cond_15
    :pswitch_15
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_18
    .packed-switch 0x65
        :pswitch_15
        :pswitch_15
        :pswitch_15
    .end packed-switch
.end method

.method static greylist-max-o isGeneral(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 4644
    const/16 v0, 0x42

    if-eq p0, v0, :cond_1a

    const/16 v0, 0x48

    if-eq p0, v0, :cond_1a

    const/16 v0, 0x53

    if-eq p0, v0, :cond_1a

    const/16 v0, 0x62

    if-eq p0, v0, :cond_1a

    const/16 v0, 0x68

    if-eq p0, v0, :cond_1a

    const/16 v0, 0x73

    if-eq p0, v0, :cond_1a

    .line 4653
    const/4 v0, 0x0

    return v0

    .line 4651
    :cond_1a
    const/4 v0, 0x1

    return v0
.end method

.method static greylist-max-o isInteger(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 4670
    const/16 v0, 0x58

    if-eq p0, v0, :cond_12

    const/16 v0, 0x64

    if-eq p0, v0, :cond_12

    const/16 v0, 0x6f

    if-eq p0, v0, :cond_12

    const/16 v0, 0x78

    if-eq p0, v0, :cond_12

    .line 4677
    const/4 v0, 0x0

    return v0

    .line 4675
    :cond_12
    const/4 v0, 0x1

    return v0
.end method

.method static greylist-max-o isText(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 4699
    const/16 v0, 0x25

    if-eq p0, v0, :cond_a

    const/16 v0, 0x6e

    if-eq p0, v0, :cond_a

    .line 4704
    const/4 v0, 0x0

    return v0

    .line 4702
    :cond_a
    const/4 v0, 0x1

    return v0
.end method

.method static greylist-max-o isValid(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 4638
    invoke-static {p0}, Ljava/util/Formatter$Conversion;->isGeneral(C)Z

    move-result v0

    if-nez v0, :cond_25

    invoke-static {p0}, Ljava/util/Formatter$Conversion;->isInteger(C)Z

    move-result v0

    if-nez v0, :cond_25

    invoke-static {p0}, Ljava/util/Formatter$Conversion;->isFloat(C)Z

    move-result v0

    if-nez v0, :cond_25

    invoke-static {p0}, Ljava/util/Formatter$Conversion;->isText(C)Z

    move-result v0

    if-nez v0, :cond_25

    const/16 v0, 0x74

    if-eq p0, v0, :cond_25

    .line 4639
    invoke-static {p0}, Ljava/util/Formatter$Conversion;->isCharacter(C)Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_25

    :cond_23
    const/4 v0, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    const/4 v0, 0x1

    .line 4638
    :goto_26
    return v0
.end method
