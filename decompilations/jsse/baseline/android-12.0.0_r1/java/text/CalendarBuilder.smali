.class Ljava/text/CalendarBuilder;
.super Ljava/lang/Object;
.source "CalendarBuilder.java"


# static fields
.field private static final greylist-max-o COMPUTED:I = 0x1

.field public static final greylist-max-o ISO_DAY_OF_WEEK:I = 0x3e8

.field private static final greylist-max-o MAX_FIELD:I = 0x12

.field private static final greylist-max-o MINIMUM_USER_STAMP:I = 0x2

.field private static final greylist-max-o UNSET:I = 0x0

.field public static final greylist-max-o WEEK_YEAR:I = 0x11


# instance fields
.field private final greylist-max-o field:[I

.field private greylist-max-o maxFieldIndex:I

.field private greylist-max-o nextStamp:I


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/16 v0, 0x24

    new-array v0, v0, [I

    iput-object v0, p0, Ljava/text/CalendarBuilder;->field:[I

    .line 64
    const/4 v0, 0x2

    iput v0, p0, Ljava/text/CalendarBuilder;->nextStamp:I

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Ljava/text/CalendarBuilder;->maxFieldIndex:I

    .line 66
    return-void
.end method

.method static greylist-max-o isValidDayOfWeek(I)Z
    .registers 2
    .param p0, "dayOfWeek"    # I

    .line 177
    if-lez p0, :cond_7

    const/4 v0, 0x7

    if-gt p0, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method static greylist-max-o toCalendarDayOfWeek(I)I
    .registers 2
    .param p0, "isoDayOfWeek"    # I

    .line 169
    invoke-static {p0}, Ljava/text/CalendarBuilder;->isValidDayOfWeek(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 171
    return p0

    .line 173
    :cond_7
    const/4 v0, 0x7

    if-ne p0, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_e

    :cond_c
    add-int/lit8 v0, p0, 0x1

    :goto_e
    return v0
.end method

.method static greylist-max-o toISODayOfWeek(I)I
    .registers 2
    .param p0, "calendarDayOfWeek"    # I

    .line 165
    const/4 v0, 0x1

    if-ne p0, v0, :cond_5

    const/4 v0, 0x7

    goto :goto_7

    :cond_5
    add-int/lit8 v0, p0, -0x1

    :goto_7
    return v0
.end method


# virtual methods
.method greylist-max-o addYear(I)Ljava/text/CalendarBuilder;
    .registers 5
    .param p1, "value"    # I

    .line 82
    iget-object v0, p0, Ljava/text/CalendarBuilder;->field:[I

    const/16 v1, 0x13

    aget v2, v0, v1

    add-int/2addr v2, p1

    aput v2, v0, v1

    .line 83
    const/16 v1, 0x23

    aget v2, v0, v1

    add-int/2addr v2, p1

    aput v2, v0, v1

    .line 84
    return-object p0
.end method

.method greylist-max-o clear(I)Ljava/text/CalendarBuilder;
    .registers 5
    .param p1, "index"    # I

    .line 95
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_5

    .line 96
    const/4 p1, 0x7

    .line 98
    :cond_5
    iget-object v0, p0, Ljava/text/CalendarBuilder;->field:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 99
    add-int/lit8 v2, p1, 0x12

    aput v1, v0, v2

    .line 100
    return-object p0
.end method

.method greylist-max-o establish(Ljava/util/Calendar;)Ljava/util/Calendar;
    .registers 9
    .param p1, "cal"    # Ljava/util/Calendar;

    .line 104
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Ljava/text/CalendarBuilder;->isSet(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_13

    iget-object v1, p0, Ljava/text/CalendarBuilder;->field:[I

    aget v0, v1, v0

    aget v1, v1, v2

    if-le v0, v1, :cond_13

    move v0, v2

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 106
    .local v0, "weekDate":Z
    :goto_14
    const/16 v1, 0x23

    if-eqz v0, :cond_2c

    invoke-virtual {p1}, Ljava/util/Calendar;->isWeekDateSupported()Z

    move-result v3

    if-nez v3, :cond_2c

    .line 108
    invoke-virtual {p0, v2}, Ljava/text/CalendarBuilder;->isSet(I)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 109
    iget-object v3, p0, Ljava/text/CalendarBuilder;->field:[I

    aget v3, v3, v1

    invoke-virtual {p0, v2, v3}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 111
    :cond_2b
    const/4 v0, 0x0

    .line 114
    :cond_2c
    invoke-virtual {p1}, Ljava/util/Calendar;->clear()V

    .line 117
    const/4 v3, 0x2

    .local v3, "stamp":I
    :goto_30
    iget v4, p0, Ljava/text/CalendarBuilder;->nextStamp:I

    if-ge v3, v4, :cond_4d

    .line 118
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_35
    iget v5, p0, Ljava/text/CalendarBuilder;->maxFieldIndex:I

    if-gt v4, v5, :cond_4a

    .line 119
    iget-object v5, p0, Ljava/text/CalendarBuilder;->field:[I

    aget v6, v5, v4

    if-ne v6, v3, :cond_47

    .line 120
    add-int/lit8 v6, v4, 0x12

    aget v5, v5, v6

    invoke-virtual {p1, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 121
    goto :goto_4a

    .line 118
    :cond_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    .line 117
    .end local v4    # "index":I
    :cond_4a
    :goto_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 126
    .end local v3    # "stamp":I
    :cond_4d
    if-eqz v0, :cond_9c

    .line 127
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Ljava/text/CalendarBuilder;->isSet(I)Z

    move-result v3

    if-eqz v3, :cond_5d

    iget-object v3, p0, Ljava/text/CalendarBuilder;->field:[I

    const/16 v4, 0x15

    aget v3, v3, v4

    goto :goto_5e

    :cond_5d
    move v3, v2

    .line 128
    .local v3, "weekOfYear":I
    :goto_5e
    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Ljava/text/CalendarBuilder;->isSet(I)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 129
    iget-object v4, p0, Ljava/text/CalendarBuilder;->field:[I

    const/16 v5, 0x19

    aget v4, v4, v5

    goto :goto_70

    :cond_6c
    invoke-virtual {p1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v4

    .line 130
    .local v4, "dayOfWeek":I
    :goto_70
    invoke-static {v4}, Ljava/text/CalendarBuilder;->isValidDayOfWeek(I)Z

    move-result v5

    if-nez v5, :cond_95

    invoke-virtual {p1}, Ljava/util/Calendar;->isLenient()Z

    move-result v5

    if-eqz v5, :cond_95

    .line 131
    const/16 v5, 0x8

    if-lt v4, v5, :cond_89

    .line 132
    add-int/lit8 v4, v4, -0x1

    .line 133
    div-int/lit8 v5, v4, 0x7

    add-int/2addr v3, v5

    .line 134
    rem-int/lit8 v5, v4, 0x7

    add-int/2addr v5, v2

    .end local v4    # "dayOfWeek":I
    .local v5, "dayOfWeek":I
    goto :goto_91

    .line 136
    .end local v5    # "dayOfWeek":I
    .restart local v4    # "dayOfWeek":I
    :cond_89
    :goto_89
    if-gtz v4, :cond_90

    .line 137
    add-int/lit8 v4, v4, 0x7

    .line 138
    add-int/lit8 v3, v3, -0x1

    goto :goto_89

    .line 136
    :cond_90
    move v5, v4

    .line 141
    .end local v4    # "dayOfWeek":I
    .restart local v5    # "dayOfWeek":I
    :goto_91
    invoke-static {v5}, Ljava/text/CalendarBuilder;->toCalendarDayOfWeek(I)I

    move-result v4

    .line 143
    .end local v5    # "dayOfWeek":I
    .restart local v4    # "dayOfWeek":I
    :cond_95
    iget-object v2, p0, Ljava/text/CalendarBuilder;->field:[I

    aget v1, v2, v1

    invoke-virtual {p1, v1, v3, v4}, Ljava/util/Calendar;->setWeekDate(III)V

    .line 145
    .end local v3    # "weekOfYear":I
    .end local v4    # "dayOfWeek":I
    :cond_9c
    return-object p1
.end method

.method greylist-max-o isSet(I)Z
    .registers 3
    .param p1, "index"    # I

    .line 88
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_5

    .line 89
    const/4 p1, 0x7

    .line 91
    :cond_5
    iget-object v0, p0, Ljava/text/CalendarBuilder;->field:[I

    aget v0, v0, p1

    if-lez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method greylist-max-o set(II)Ljava/text/CalendarBuilder;
    .registers 6
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 69
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_9

    .line 70
    const/4 p1, 0x7

    .line 71
    invoke-static {p2}, Ljava/text/CalendarBuilder;->toCalendarDayOfWeek(I)I

    move-result p2

    .line 73
    :cond_9
    iget-object v0, p0, Ljava/text/CalendarBuilder;->field:[I

    iget v1, p0, Ljava/text/CalendarBuilder;->nextStamp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/text/CalendarBuilder;->nextStamp:I

    aput v1, v0, p1

    .line 74
    add-int/lit8 v1, p1, 0x12

    aput p2, v0, v1

    .line 75
    iget v0, p0, Ljava/text/CalendarBuilder;->maxFieldIndex:I

    if-le p1, v0, :cond_21

    const/16 v0, 0x11

    if-ge p1, v0, :cond_21

    .line 76
    iput p1, p0, Ljava/text/CalendarBuilder;->maxFieldIndex:I

    .line 78
    :cond_21
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "CalendarBuilder:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    iget-object v2, p0, Ljava/text/CalendarBuilder;->field:[I

    array-length v2, v2

    const/16 v3, 0x2c

    if-ge v1, v2, :cond_2f

    .line 152
    invoke-virtual {p0, v1}, Ljava/text/CalendarBuilder;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/text/CalendarBuilder;->field:[I

    add-int/lit8 v4, v1, 0x12

    aget v2, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 156
    .end local v1    # "i":I
    :cond_2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 157
    .local v1, "lastIndex":I
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_3e

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 160
    :cond_3e
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
