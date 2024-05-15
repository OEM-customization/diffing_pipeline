.class public Lsun/util/locale/provider/CalendarDataUtility;
.super Ljava/lang/Object;
.source "CalendarDataUtility.java"


# static fields
.field private static final blacklist BUDDHIST_CALENDAR:Ljava/lang/String; = "buddhist"

.field private static final blacklist GREGORIAN_CALENDAR:Ljava/lang/String; = "gregorian"

.field private static final blacklist ISLAMIC_CALENDAR:Ljava/lang/String; = "islamic"

.field private static final blacklist JAPANESE_CALENDAR:Ljava/lang/String; = "japanese"

.field private static blacklist REST_OF_STYLES:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 64
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lsun/util/locale/provider/CalendarDataUtility;->REST_OF_STYLES:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x8001
        0x2
        0x8002
        0x4
        0x8004
    .end array-data
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method private static blacklist getDateFormatSymbols(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormatSymbols;
    .registers 5
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 289
    invoke-static {p0}, Lsun/util/locale/provider/CalendarDataUtility;->normalizeCalendarType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "calendarType":Ljava/lang/String;
    new-instance v1, Landroid/icu/text/DateFormatSymbols;

    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/icu/text/DateFormatSymbols;-><init>(Landroid/icu/util/ULocale;Ljava/lang/String;)V

    return-object v1
.end method

.method private static blacklist getNames(Ljava/lang/String;IILjava/util/Locale;)[Ljava/lang/String;
    .registers 10
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "field"    # I
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;

    .line 262
    invoke-static {p2}, Lsun/util/locale/provider/CalendarDataUtility;->toContext(I)I

    move-result v0

    .line 263
    .local v0, "context":I
    invoke-static {p2}, Lsun/util/locale/provider/CalendarDataUtility;->toWidth(I)I

    move-result v1

    .line 264
    .local v1, "width":I
    invoke-static {p0, p3}, Lsun/util/locale/provider/CalendarDataUtility;->getDateFormatSymbols(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormatSymbols;

    move-result-object v2

    .line 265
    .local v2, "symbols":Landroid/icu/text/DateFormatSymbols;
    const/4 v3, 0x2

    if-eqz p1, :cond_3e

    if-eq p1, v3, :cond_39

    const/4 v3, 0x7

    if-eq p1, v3, :cond_34

    const/16 v3, 0x9

    if-ne p1, v3, :cond_1d

    .line 282
    invoke-virtual {v2}, Landroid/icu/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 284
    :cond_1d
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown field: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 280
    :cond_34
    invoke-virtual {v2, v0, v1}, Landroid/icu/text/DateFormatSymbols;->getWeekdays(II)[Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 267
    :cond_39
    invoke-virtual {v2, v0, v1}, Landroid/icu/text/DateFormatSymbols;->getMonths(II)[Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 269
    :cond_3e
    if-eqz v1, :cond_66

    const/4 v4, 0x1

    if-eq v1, v4, :cond_61

    if-ne v1, v3, :cond_4a

    .line 271
    invoke-virtual {v2}, Landroid/icu/text/DateFormatSymbols;->getNarrowEras()[Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 277
    :cond_4a
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 275
    :cond_61
    invoke-virtual {v2}, Landroid/icu/text/DateFormatSymbols;->getEraNames()[Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 273
    :cond_66
    invoke-virtual {v2}, Landroid/icu/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static blacklist normalizeCalendarType(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "requestID"    # Ljava/lang/String;

    .line 214
    const-string v0, "gregory"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "iso8601"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_1e

    .line 216
    :cond_11
    const-string v0, "islamic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 217
    const-string v0, "islamic"

    .local v0, "type":Ljava/lang/String;
    goto :goto_20

    .line 219
    .end local v0    # "type":Ljava/lang/String;
    :cond_1c
    move-object v0, p0

    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_20

    .line 215
    .end local v0    # "type":Ljava/lang/String;
    :cond_1e
    :goto_1e
    const-string v0, "gregorian"

    .line 221
    .restart local v0    # "type":Ljava/lang/String;
    :goto_20
    return-object v0
.end method

.method public static blacklist retrieveFieldValueName(Ljava/lang/String;IIILjava/util/Locale;)Ljava/lang/String;
    .registers 10
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "field"    # I
    .param p2, "value"    # I
    .param p3, "style"    # I
    .param p4, "locale"    # Ljava/util/Locale;

    .line 105
    if-nez p1, :cond_47

    .line 107
    invoke-static {p0}, Lsun/util/locale/provider/CalendarDataUtility;->normalizeCalendarType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x5e3d124b

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_30

    const v2, -0x2cddc04f

    if-eq v1, v2, :cond_26

    const v2, 0x7ccb45c8

    if-eq v1, v2, :cond_1c

    :cond_1b
    goto :goto_3a

    :cond_1c
    const-string v1, "islamic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v4

    goto :goto_3b

    :cond_26
    const-string v1, "japanese"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v3

    goto :goto_3b

    :cond_30
    const-string v1, "buddhist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    goto :goto_3b

    :goto_3a
    const/4 v0, -0x1

    :goto_3b
    if-eqz v0, :cond_45

    if-eq v0, v4, :cond_45

    if-eq v0, v3, :cond_42

    goto :goto_47

    .line 117
    :cond_42
    add-int/lit16 p2, p2, 0xe7

    .line 118
    goto :goto_47

    .line 111
    :cond_45
    add-int/lit8 p2, p2, -0x1

    .line 124
    :cond_47
    :goto_47
    const/4 v0, 0x0

    if-gez p2, :cond_4b

    .line 125
    return-object v0

    .line 127
    :cond_4b
    invoke-static {p0, p1, p3, p4}, Lsun/util/locale/provider/CalendarDataUtility;->getNames(Ljava/lang/String;IILjava/util/Locale;)[Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "names":[Ljava/lang/String;
    array-length v2, v1

    if-lt p2, v2, :cond_53

    .line 129
    return-object v0

    .line 131
    :cond_53
    aget-object v0, v1, p2

    return-object v0
.end method

.method public static blacklist retrieveFieldValueNames(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;
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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 169
    if-nez p2, :cond_19

    .line 170
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p3}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFieldValueNamesImpl(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v0

    .line 171
    .local v0, "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget-object v1, Lsun/util/locale/provider/CalendarDataUtility;->REST_OF_STYLES:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_1d

    aget v4, v1, v3

    .line 172
    .local v4, "st":I
    invoke-static {p0, p1, v4, p3}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFieldValueNamesImpl(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 171
    .end local v4    # "st":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 176
    .end local v0    # "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_19
    invoke-static {p0, p1, p2, p3}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFieldValueNamesImpl(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v0

    .line 178
    .restart local v0    # "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1d
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v1, 0x0

    goto :goto_26

    :cond_25
    move-object v1, v0

    :goto_26
    return-object v1
.end method

.method private static blacklist retrieveFieldValueNamesImpl(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;
    .registers 13
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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 227
    invoke-static {p0, p1, p2, p3}, Lsun/util/locale/provider/CalendarDataUtility;->getNames(Ljava/lang/String;IILjava/util/Locale;)[Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 229
    .local v1, "skipped":I
    const/4 v2, 0x0

    .line 230
    .local v2, "offset":I
    if-nez p1, :cond_4d

    .line 232
    invoke-static {p0}, Lsun/util/locale/provider/CalendarDataUtility;->normalizeCalendarType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x5e3d124b

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v5, v6, :cond_37

    const v6, -0x2cddc04f

    if-eq v5, v6, :cond_2d

    const v6, 0x7ccb45c8

    if-eq v5, v6, :cond_23

    :cond_22
    goto :goto_40

    :cond_23
    const-string v5, "islamic"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    move v4, v8

    goto :goto_40

    :cond_2d
    const-string v5, "japanese"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    move v4, v7

    goto :goto_40

    :cond_37
    const-string v5, "buddhist"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    const/4 v4, 0x0

    :goto_40
    if-eqz v4, :cond_4c

    if-eq v4, v8, :cond_4c

    if-eq v4, v7, :cond_47

    goto :goto_4d

    .line 238
    :cond_47
    const/16 v1, 0xe8

    .line 239
    const/16 v2, -0xe7

    .line 240
    goto :goto_4d

    .line 235
    :cond_4c
    const/4 v2, 0x1

    .line 245
    :cond_4d
    :goto_4d
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 246
    .local v3, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move v4, v1

    .local v4, "i":I
    :goto_53
    array-length v5, v0

    if-ge v4, v5, :cond_76

    .line 247
    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 248
    goto :goto_73

    .line 251
    :cond_5f
    aget-object v5, v0, v4

    add-int v6, v4, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_73

    .line 255
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v5

    .line 246
    :cond_73
    :goto_73
    add-int/lit8 v4, v4, 0x1

    goto :goto_53

    .line 258
    .end local v4    # "i":I
    :cond_76
    return-object v3
.end method

.method public static blacklist retrieveJavaTimeFieldValueName(Ljava/lang/String;IIILjava/util/Locale;)Ljava/lang/String;
    .registers 6
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "field"    # I
    .param p2, "value"    # I
    .param p3, "style"    # I
    .param p4, "locale"    # Ljava/util/Locale;

    .line 153
    invoke-static {p0, p1, p2, p3, p4}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFieldValueName(Ljava/lang/String;IIILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist retrieveJavaTimeFieldValueNames(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;
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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 200
    invoke-static {p0, p1, p2, p3}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFieldValueNames(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist toContext(I)I
    .registers 4
    .param p0, "style"    # I

    .line 316
    const/4 v0, 0x1

    if-eq p0, v0, :cond_29

    const/4 v1, 0x2

    if-eq p0, v1, :cond_29

    const/4 v1, 0x4

    if-eq p0, v1, :cond_29

    const v1, 0x8004

    if-eq p0, v1, :cond_28

    packed-switch p0, :pswitch_data_2c

    .line 326
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_28
    :pswitch_28
    return v0

    .line 320
    :cond_29
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_2c
    .packed-switch 0x8001
        :pswitch_28
        :pswitch_28
    .end packed-switch
.end method

.method private static blacklist toWidth(I)I
    .registers 4
    .param p0, "style"    # I

    .line 297
    const/4 v0, 0x1

    if-eq p0, v0, :cond_2a

    const/4 v1, 0x2

    if-eq p0, v1, :cond_29

    const/4 v2, 0x4

    if-eq p0, v2, :cond_28

    const v2, 0x8004

    if-eq p0, v2, :cond_28

    packed-switch p0, :pswitch_data_2c

    .line 308
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_28
    return v1

    .line 306
    :cond_29
    :pswitch_29
    return v0

    .line 300
    :cond_2a
    :pswitch_2a
    const/4 v0, 0x0

    return v0

    :pswitch_data_2c
    .packed-switch 0x8001
        :pswitch_2a
        :pswitch_29
    .end packed-switch
.end method
