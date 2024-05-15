.class Ljava/util/Formatter$DateTime;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Formatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DateTime"
.end annotation


# static fields
.field static final greylist-max-o AM_PM:C = 'p'

.field static final greylist-max-o CENTURY:C = 'C'

.field static final greylist-max-o DATE:C = 'D'

.field static final greylist-max-o DATE_TIME:C = 'c'

.field static final greylist-max-o DAY_OF_MONTH:C = 'e'

.field static final greylist-max-o DAY_OF_MONTH_0:C = 'd'

.field static final greylist-max-o DAY_OF_YEAR:C = 'j'

.field static final greylist-max-o HOUR:C = 'l'

.field static final greylist-max-o HOUR_0:C = 'I'

.field static final greylist-max-o HOUR_OF_DAY:C = 'k'

.field static final greylist-max-o HOUR_OF_DAY_0:C = 'H'

.field static final greylist-max-o ISO_STANDARD_DATE:C = 'F'

.field static final greylist-max-o MILLISECOND:C = 'L'

.field static final greylist-max-o MILLISECOND_SINCE_EPOCH:C = 'Q'

.field static final greylist-max-o MINUTE:C = 'M'

.field static final greylist-max-o MONTH:C = 'm'

.field static final greylist-max-o NAME_OF_DAY:C = 'A'

.field static final greylist-max-o NAME_OF_DAY_ABBREV:C = 'a'

.field static final greylist-max-o NAME_OF_MONTH:C = 'B'

.field static final greylist-max-o NAME_OF_MONTH_ABBREV:C = 'b'

.field static final greylist-max-o NAME_OF_MONTH_ABBREV_X:C = 'h'

.field static final greylist-max-o NANOSECOND:C = 'N'

.field static final greylist-max-o SECOND:C = 'S'

.field static final greylist-max-o SECONDS_SINCE_EPOCH:C = 's'

.field static final greylist-max-o TIME:C = 'T'

.field static final greylist-max-o TIME_12_HOUR:C = 'r'

.field static final greylist-max-o TIME_24_HOUR:C = 'R'

.field static final greylist-max-o YEAR_2:C = 'y'

.field static final greylist-max-o YEAR_4:C = 'Y'

.field static final greylist-max-o ZONE:C = 'Z'

.field static final greylist-max-o ZONE_NUMERIC:C = 'z'


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 4709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static greylist-max-o isValid(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 4757
    packed-switch p0, :pswitch_data_8

    .line 4804
    :pswitch_3
    const/4 v0, 0x0

    return v0

    .line 4802
    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x41
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
