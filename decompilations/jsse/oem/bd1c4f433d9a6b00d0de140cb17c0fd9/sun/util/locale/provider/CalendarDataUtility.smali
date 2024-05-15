.class public Lsun/util/locale/provider/CalendarDataUtility;
.super Ljava/lang/Object;
.source "CalendarDataUtility.java"


# static fields
.field private static final BUDDHIST_CALENDAR:Ljava/lang/String; = "buddhist"

.field private static final GREGORIAN_CALENDAR:Ljava/lang/String; = "gregorian"

.field private static final ISLAMIC_CALENDAR:Ljava/lang/String; = "islamic"

.field private static final JAPANESE_CALENDAR:Ljava/lang/String; = "japanese"

.field private static REST_OF_STYLES:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 98
    const v0, 0x8001

    const/4 v1, 0x2

    const v2, 0x8002

    .line 99
    const/4 v3, 0x4

    const v4, 0x8004

    .line 97
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lsun/util/locale/provider/CalendarDataUtility;->REST_OF_STYLES:[I

    .line 44
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method private static getDateFormatSymbols(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormatSymbols;
    .registers 5
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 188
    invoke-static {p0}, Lsun/util/locale/provider/CalendarDataUtility;->normalizeCalendarType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "calendarType":Ljava/lang/String;
    new-instance v1, Landroid/icu/text/DateFormatSymbols;

    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/icu/text/DateFormatSymbols;-><init>(Landroid/icu/util/ULocale;Ljava/lang/String;)V

    return-object v1
.end method

.method private static getNames(Ljava/lang/String;IILjava/util/Locale;)[Ljava/lang/String;
    .registers 10
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "field"    # I
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;

    .prologue
    .line 161
    invoke-static {p2}, Lsun/util/locale/provider/CalendarDataUtility;->toContext(I)I

    move-result v0

    .line 162
    .local v0, "context":I
    invoke-static {p2}, Lsun/util/locale/provider/CalendarDataUtility;->toWidth(I)I

    move-result v2

    .line 163
    .local v2, "width":I
    invoke-static {p0, p3}, Lsun/util/locale/provider/CalendarDataUtility;->getDateFormatSymbols(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormatSymbols;

    move-result-object v1

    .line 164
    .local v1, "symbols":Landroid/icu/text/DateFormatSymbols;
    sparse-switch p1, :sswitch_data_64

    .line 183
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown field: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 166
    :sswitch_29
    invoke-virtual {v1, v0, v2}, Landroid/icu/text/DateFormatSymbols;->getMonths(II)[Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 168
    :sswitch_2e
    packed-switch v2, :pswitch_data_76

    .line 176
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 170
    :pswitch_4b
    invoke-virtual {v1}, Landroid/icu/text/DateFormatSymbols;->getNarrowEras()[Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 172
    :pswitch_50
    invoke-virtual {v1}, Landroid/icu/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 174
    :pswitch_55
    invoke-virtual {v1}, Landroid/icu/text/DateFormatSymbols;->getEraNames()[Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 179
    :sswitch_5a
    invoke-virtual {v1, v0, v2}, Landroid/icu/text/DateFormatSymbols;->getWeekdays(II)[Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 181
    :sswitch_5f
    invoke-virtual {v1}, Landroid/icu/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 164
    :sswitch_data_64
    .sparse-switch
        0x0 -> :sswitch_2e
        0x2 -> :sswitch_29
        0x7 -> :sswitch_5a
        0x9 -> :sswitch_5f
    .end sparse-switch

    .line 168
    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_50
        :pswitch_55
        :pswitch_4b
    .end packed-switch
.end method

.method private static normalizeCalendarType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "requestID"    # Ljava/lang/String;

    .prologue
    .line 233
    const-string/jumbo v1, "gregory"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string/jumbo v1, "iso8601"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 234
    :cond_12
    const-string/jumbo v0, "gregorian"

    .line 240
    .local v0, "type":Ljava/lang/String;
    :goto_15
    return-object v0

    .line 235
    .end local v0    # "type":Ljava/lang/String;
    :cond_16
    const-string/jumbo v1, "islamic"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 236
    const-string/jumbo v0, "islamic"

    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_15

    .line 238
    .end local v0    # "type":Ljava/lang/String;
    :cond_23
    move-object v0, p0

    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_15
.end method

.method public static retrieveFieldValueName(Ljava/lang/String;IIILjava/util/Locale;)Ljava/lang/String;
    .registers 9
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "field"    # I
    .param p2, "value"    # I
    .param p3, "style"    # I
    .param p4, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v3, 0x0

    .line 61
    if-nez p1, :cond_12

    .line 63
    invoke-static {p0}, Lsun/util/locale/provider/CalendarDataUtility;->normalizeCalendarType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "buddhist"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 67
    :cond_10
    add-int/lit8 p2, p2, -0x1

    .line 80
    :cond_12
    :goto_12
    if-gez p2, :cond_2a

    .line 81
    return-object v3

    .line 63
    :cond_15
    const-string/jumbo v2, "islamic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string/jumbo v2, "japanese"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 73
    add-int/lit16 p2, p2, 0xe7

    .line 74
    goto :goto_12

    .line 83
    :cond_2a
    invoke-static {p0, p1, p3, p4}, Lsun/util/locale/provider/CalendarDataUtility;->getNames(Ljava/lang/String;IILjava/util/Locale;)[Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "names":[Ljava/lang/String;
    array-length v1, v0

    if-lt p2, v1, :cond_32

    .line 85
    return-object v3

    .line 87
    :cond_32
    aget-object v1, v0, p2

    return-object v1
.end method

.method public static retrieveFieldValueNames(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;
    .registers 10
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "field"    # I
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 106
    if-nez p2, :cond_19

    .line 107
    const/4 v3, 0x1

    invoke-static {p0, p1, v3, p3}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFieldValueNamesImpl(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v0

    .line 108
    .local v0, "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget-object v3, Lsun/util/locale/provider/CalendarDataUtility;->REST_OF_STYLES:[I

    array-length v4, v3

    :goto_b
    if-ge v2, v4, :cond_1d

    aget v1, v3, v2

    .line 109
    .local v1, "st":I
    invoke-static {p0, p1, v1, p3}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFieldValueNamesImpl(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 108
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 113
    .end local v0    # "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1    # "st":I
    :cond_19
    invoke-static {p0, p1, p2, p3}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFieldValueNamesImpl(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v0

    .line 115
    .restart local v0    # "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1d
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 v0, 0x0

    .end local v0    # "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_24
    return-object v0
.end method

.method private static retrieveFieldValueNamesImpl(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;
    .registers 11
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "field"    # I
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    invoke-static {p0, p1, p2, p3}, Lsun/util/locale/provider/CalendarDataUtility;->getNames(Ljava/lang/String;IILjava/util/Locale;)[Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "names":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 122
    .local v4, "skipped":I
    const/4 v2, 0x0

    .line 123
    .local v2, "offset":I
    if-nez p1, :cond_16

    .line 125
    invoke-static {p0}, Lsun/util/locale/provider/CalendarDataUtility;->normalizeCalendarType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "buddhist"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 128
    :cond_15
    const/4 v2, 0x1

    .line 138
    :cond_16
    :goto_16
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 139
    .local v3, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move v0, v4

    .local v0, "i":I
    :goto_1c
    array-length v5, v1

    if-ge v0, v5, :cond_55

    .line 140
    aget-object v5, v1, v0

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_41

    .line 139
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 125
    .end local v0    # "i":I
    .end local v3    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_2a
    const-string/jumbo v6, "islamic"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    const-string/jumbo v6, "japanese"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 131
    const/16 v4, 0xe8

    .line 132
    const/16 v2, -0xe7

    .line 133
    goto :goto_16

    .line 144
    .restart local v0    # "i":I
    .restart local v3    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_41
    aget-object v5, v1, v0

    add-int v6, v0, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_27

    .line 148
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v5

    .line 151
    :cond_55
    return-object v3
.end method

.method public static retrieveJavaTimeFieldValueName(Ljava/lang/String;IIILjava/util/Locale;)Ljava/lang/String;
    .registers 6
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "field"    # I
    .param p2, "value"    # I
    .param p3, "style"    # I
    .param p4, "locale"    # Ljava/util/Locale;

    .prologue
    .line 93
    invoke-static {p0, p1, p2, p3, p4}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFieldValueName(Ljava/lang/String;IIILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static retrieveJavaTimeFieldValueNames(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;
    .registers 5
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "field"    # I
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    invoke-static {p0, p1, p2, p3}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFieldValueNames(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static toContext(I)I
    .registers 4
    .param p0, "style"    # I

    .prologue
    .line 215
    sparse-switch p0, :sswitch_data_22

    .line 225
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :sswitch_1d
    const/4 v0, 0x0

    return v0

    .line 223
    :sswitch_1f
    const/4 v0, 0x1

    return v0

    .line 215
    nop

    :sswitch_data_22
    .sparse-switch
        0x1 -> :sswitch_1d
        0x2 -> :sswitch_1d
        0x4 -> :sswitch_1d
        0x8001 -> :sswitch_1f
        0x8002 -> :sswitch_1f
        0x8004 -> :sswitch_1f
    .end sparse-switch
.end method

.method private static toWidth(I)I
    .registers 4
    .param p0, "style"    # I

    .prologue
    .line 196
    sparse-switch p0, :sswitch_data_24

    .line 207
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :sswitch_1d
    const/4 v0, 0x0

    return v0

    .line 202
    :sswitch_1f
    const/4 v0, 0x2

    return v0

    .line 205
    :sswitch_21
    const/4 v0, 0x1

    return v0

    .line 196
    nop

    :sswitch_data_24
    .sparse-switch
        0x1 -> :sswitch_1d
        0x2 -> :sswitch_21
        0x4 -> :sswitch_1f
        0x8001 -> :sswitch_1d
        0x8002 -> :sswitch_21
        0x8004 -> :sswitch_1f
    .end sparse-switch
.end method
