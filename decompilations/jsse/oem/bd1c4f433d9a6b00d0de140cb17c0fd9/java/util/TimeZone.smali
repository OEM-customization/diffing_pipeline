.class public abstract Ljava/util/TimeZone;
.super Ljava/lang/Object;
.source "TimeZone.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/TimeZone$NoImagePreloadHolder;
    }
.end annotation


# static fields
.field private static final GMT:Ljava/util/TimeZone;

.field public static final LONG:I = 0x1

.field static final NO_TIMEZONE:Ljava/util/TimeZone; = null

.field public static final SHORT:I = 0x0

.field private static final UTC:Ljava/util/TimeZone;

.field private static volatile defaultTimeZone:Ljava/util/TimeZone; = null

.field static final serialVersionUID:J = 0x31b3e9f57744aca1L


# instance fields
.field private ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 169
    new-instance v0, Ljava/util/SimpleTimeZone;

    const-string/jumbo v1, "GMT"

    invoke-direct {v0, v2, v1}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljava/util/TimeZone;->GMT:Ljava/util/TimeZone;

    .line 170
    new-instance v0, Ljava/util/SimpleTimeZone;

    const-string/jumbo v1, "UTC"

    invoke-direct {v0, v2, v1}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljava/util/TimeZone;->UTC:Ljava/util/TimeZone;

    .line 135
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    return-void
.end method

.method private static appendNumber(Ljava/lang/StringBuilder;II)V
    .registers 6
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "count"    # I
    .param p2, "value"    # I

    .prologue
    .line 457
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 458
    .local v1, "string":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, p1, v2

    if-ge v0, v2, :cond_15

    .line 459
    const/16 v2, 0x30

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 458
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 461
    :cond_15
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    return-void
.end method

.method public static createGmtOffsetString(ZZI)Ljava/lang/String;
    .registers 8
    .param p0, "includeGmt"    # Z
    .param p1, "includeMinuteSeparator"    # Z
    .param p2, "offsetMillis"    # I

    .prologue
    const/4 v4, 0x2

    .line 437
    const v3, 0xea60

    div-int v1, p2, v3

    .line 438
    .local v1, "offsetMinutes":I
    const/16 v2, 0x2b

    .line 439
    .local v2, "sign":C
    if-gez v1, :cond_d

    .line 440
    const/16 v2, 0x2d

    .line 441
    neg-int v1, v1

    .line 443
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x9

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 444
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_1c

    .line 445
    const-string/jumbo v3, "GMT"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    :cond_1c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 448
    div-int/lit8 v3, v1, 0x3c

    invoke-static {v0, v4, v3}, Ljava/util/TimeZone;->appendNumber(Ljava/lang/StringBuilder;II)V

    .line 449
    if-eqz p1, :cond_2b

    .line 450
    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 452
    :cond_2b
    rem-int/lit8 v3, v1, 0x3c

    invoke-static {v0, v4, v3}, Ljava/util/TimeZone;->appendNumber(Ljava/lang/StringBuilder;II)V

    .line 453
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static declared-synchronized getAvailableIDs()[Ljava/lang/String;
    .registers 2

    .prologue
    const-class v1, Ljava/util/TimeZone;

    monitor-enter v1

    .line 675
    :try_start_3
    invoke-static {}, Llibcore/util/ZoneInfoDB;->getInstance()Llibcore/util/ZoneInfoDB$TzData;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/util/ZoneInfoDB$TzData;->getAvailableIDs()[Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_d

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getAvailableIDs(I)[Ljava/lang/String;
    .registers 3
    .param p0, "rawOffset"    # I

    .prologue
    const-class v1, Ljava/util/TimeZone;

    monitor-enter v1

    .line 667
    :try_start_3
    invoke-static {}, Llibcore/util/ZoneInfoDB;->getInstance()Llibcore/util/ZoneInfoDB$TzData;

    move-result-object v0

    invoke-virtual {v0, p0}, Llibcore/util/ZoneInfoDB$TzData;->getAvailableIDs(I)[Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_d

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getCustomTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    .registers 14
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x3

    .line 626
    sget-object v7, Ljava/util/TimeZone$NoImagePreloadHolder;->CUSTOM_ZONE_ID_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 627
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-nez v7, :cond_11

    .line 628
    return-object v8

    .line 632
    :cond_11
    const/4 v4, 0x0

    .line 634
    .local v4, "minute":I
    const/4 v7, 0x1

    :try_start_13
    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 635
    .local v1, "hour":I
    const/4 v7, 0x3

    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2b

    .line 636
    const/4 v7, 0x3

    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_2a} :catch_32

    move-result v4

    .line 642
    :cond_2b
    if-ltz v1, :cond_31

    const/16 v7, 0x17

    if-le v1, v7, :cond_39

    .line 643
    :cond_31
    return-object v8

    .line 638
    .end local v1    # "hour":I
    :catch_32
    move-exception v2

    .line 639
    .local v2, "impossible":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 642
    .end local v2    # "impossible":Ljava/lang/NumberFormatException;
    .restart local v1    # "hour":I
    :cond_39
    if-ltz v4, :cond_31

    const/16 v7, 0x3b

    if-gt v4, v7, :cond_31

    .line 646
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 647
    .local v6, "sign":C
    const v7, 0x36ee80

    mul-int/2addr v7, v1

    const v8, 0xea60

    mul-int/2addr v8, v4

    add-int v5, v7, v8

    .line 648
    .local v5, "raw":I
    const/16 v7, 0x2d

    if-ne v6, v7, :cond_52

    .line 649
    neg-int v5, v5

    .line 652
    :cond_52
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v8, "GMT%c%02d:%02d"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v9, v11

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 654
    .local v0, "cleanId":Ljava/lang/String;
    new-instance v7, Ljava/util/SimpleTimeZone;

    invoke-direct {v7, v5, v0}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    return-object v7
.end method

.method public static getDefault()Ljava/util/TimeZone;
    .registers 1

    .prologue
    .line 698
    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TimeZone;

    return-object v0
.end method

.method static declared-synchronized getDefaultRef()Ljava/util/TimeZone;
    .registers 5

    .prologue
    const-class v4, Ljava/util/TimeZone;

    monitor-enter v4

    .line 706
    :try_start_3
    sget-object v3, Ljava/util/TimeZone;->defaultTimeZone:Ljava/util/TimeZone;

    if-nez v3, :cond_2c

    .line 707
    invoke-static {}, Lorg/apache/harmony/luni/internal/util/TimezoneGetter;->getInstance()Lorg/apache/harmony/luni/internal/util/TimezoneGetter;

    move-result-object v1

    .line 708
    .local v1, "tzGetter":Lorg/apache/harmony/luni/internal/util/TimezoneGetter;
    if-eqz v1, :cond_30

    invoke-virtual {v1}, Lorg/apache/harmony/luni/internal/util/TimezoneGetter;->getId()Ljava/lang/String;

    move-result-object v2

    .line 709
    :goto_11
    if-eqz v2, :cond_17

    .line 710
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 712
    :cond_17
    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_37

    move-result v3

    if-eqz v3, :cond_26

    .line 715
    :cond_1f
    :try_start_1f
    const-string/jumbo v3, "/etc/timezone"

    invoke-static {v3}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_25} :catch_32
    .catchall {:try_start_1f .. :try_end_25} :catchall_37

    move-result-object v2

    .line 722
    :cond_26
    :goto_26
    :try_start_26
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    sput-object v3, Ljava/util/TimeZone;->defaultTimeZone:Ljava/util/TimeZone;

    .line 724
    :cond_2c
    sget-object v3, Ljava/util/TimeZone;->defaultTimeZone:Ljava/util/TimeZone;
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_37

    monitor-exit v4

    return-object v3

    .line 708
    :cond_30
    const/4 v2, 0x0

    .local v2, "zoneName":Ljava/lang/String;
    goto :goto_11

    .line 716
    .end local v2    # "zoneName":Ljava/lang/String;
    :catch_32
    move-exception v0

    .line 719
    .local v0, "ex":Ljava/io/IOException;
    :try_start_33
    const-string/jumbo v2, "GMT"
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    .local v2, "zoneName":Ljava/lang/String;
    goto :goto_26

    .end local v0    # "ex":Ljava/io/IOException;
    .end local v2    # "zoneName":Ljava/lang/String;
    :catchall_37
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private static native getSystemGMTOffsetID()Ljava/lang/String;
.end method

.method private static native getSystemTimeZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static declared-synchronized getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    .registers 6
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    const-class v3, Ljava/util/TimeZone;

    monitor-enter v3

    .line 560
    if-nez p0, :cond_12

    .line 561
    :try_start_6
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "id == null"

    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_f

    :catchall_f
    move-exception v2

    monitor-exit v3

    throw v2

    .line 565
    :cond_12
    :try_start_12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v4, :cond_3e

    .line 566
    const-string/jumbo v2, "GMT"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 567
    sget-object v2, Ljava/util/TimeZone;->GMT:Ljava/util/TimeZone;

    invoke-virtual {v2}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/TimeZone;
    :try_end_29
    .catchall {:try_start_12 .. :try_end_29} :catchall_f

    monitor-exit v3

    return-object v2

    .line 569
    :cond_2b
    :try_start_2b
    const-string/jumbo v2, "UTC"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 570
    sget-object v2, Ljava/util/TimeZone;->UTC:Ljava/util/TimeZone;

    invoke-virtual {v2}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/TimeZone;
    :try_end_3c
    .catchall {:try_start_2b .. :try_end_3c} :catchall_f

    monitor-exit v3

    return-object v2

    .line 575
    :cond_3e
    const/4 v1, 0x0

    .line 577
    .local v1, "zone":Ljava/util/TimeZone;
    :try_start_3f
    invoke-static {}, Llibcore/util/ZoneInfoDB;->getInstance()Llibcore/util/ZoneInfoDB$TzData;

    move-result-object v2

    invoke-virtual {v2, p0}, Llibcore/util/ZoneInfoDB$TzData;->makeTimeZone(Ljava/lang/String;)Llibcore/util/ZoneInfo;
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_46} :catch_6a
    .catchall {:try_start_3f .. :try_end_46} :catchall_f

    move-result-object v1

    .line 582
    .end local v1    # "zone":Ljava/util/TimeZone;
    :goto_47
    if-nez v1, :cond_5c

    :try_start_49
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_5c

    const-string/jumbo v2, "GMT"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 583
    invoke-static {p0}, Ljava/util/TimeZone;->getCustomTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    :try_end_5b
    .catchall {:try_start_49 .. :try_end_5b} :catchall_f

    move-result-object v1

    .line 587
    :cond_5c
    if-eqz v1, :cond_60

    :goto_5e
    monitor-exit v3

    return-object v1

    :cond_60
    :try_start_60
    sget-object v2, Ljava/util/TimeZone;->GMT:Ljava/util/TimeZone;

    invoke-virtual {v2}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/TimeZone;
    :try_end_68
    .catchall {:try_start_60 .. :try_end_68} :catchall_f

    move-object v1, v2

    goto :goto_5e

    .line 578
    .restart local v1    # "zone":Ljava/util/TimeZone;
    :catch_6a
    move-exception v0

    .local v0, "ignored":Ljava/io/IOException;
    goto :goto_47
.end method

.method public static getTimeZone(Ljava/time/ZoneId;)Ljava/util/TimeZone;
    .registers 5
    .param p0, "zoneId"    # Ljava/time/ZoneId;

    .prologue
    .line 600
    invoke-virtual {p0}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v1

    .line 601
    .local v1, "tzid":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 602
    .local v0, "c":C
    const/16 v2, 0x2b

    if-eq v0, v2, :cond_11

    const/16 v2, 0x2d

    if-ne v0, v2, :cond_2a

    .line 603
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "GMT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 607
    :cond_25
    :goto_25
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    return-object v2

    .line 604
    :cond_2a
    const/16 v2, 0x5a

    if-ne v0, v2, :cond_25

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_25

    .line 605
    const-string/jumbo v1, "UTC"

    goto :goto_25
.end method

.method public static declared-synchronized setDefault(Ljava/util/TimeZone;)V
    .registers 7
    .param p0, "timeZone"    # Ljava/util/TimeZone;

    .prologue
    const/4 v1, 0x0

    const-class v2, Ljava/util/TimeZone;

    monitor-enter v2

    .line 739
    :try_start_4
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 740
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_18

    .line 741
    new-instance v3, Ljava/util/PropertyPermission;

    .line 742
    const-string/jumbo v4, "user.timezone"

    const-string/jumbo v5, "write"

    .line 741
    invoke-direct {v3, v4, v5}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 744
    :cond_18
    if-eqz p0, :cond_20

    invoke-virtual {p0}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TimeZone;

    :cond_20
    sput-object v1, Ljava/util/TimeZone;->defaultTimeZone:Ljava/util/TimeZone;

    .line 746
    invoke-static {}, Landroid/icu/util/TimeZone;->clearCachedDefault()V
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_27

    monitor-exit v2

    .line 747
    return-void

    .end local v0    # "sm":Ljava/lang/SecurityManager;
    :catchall_27
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 771
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TimeZone;

    .line 772
    .local v1, "other":Ljava/util/TimeZone;
    iget-object v2, p0, Ljava/util/TimeZone;->ID:Ljava/lang/String;

    iput-object v2, v1, Ljava/util/TimeZone;->ID:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_a} :catch_b

    .line 773
    return-object v1

    .line 774
    .end local v1    # "other":Ljava/util/TimeZone;
    :catch_b
    move-exception v0

    .line 775
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getDSTSavings()I
    .registers 2

    .prologue
    .line 492
    invoke-virtual {p0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 493
    const v0, 0x36ee80

    return v0

    .line 495
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 323
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    .line 322
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .registers 4
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 342
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDisplayName(ZI)Ljava/lang/String;
    .registers 4
    .param p1, "daylight"    # Z
    .param p2, "style"    # I

    .prologue
    .line 371
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    .line 370
    invoke-virtual {p0, p1, p2, v0}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;
    .registers 14
    .param p1, "daylightTime"    # Z
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v8, 0x1

    .line 387
    packed-switch p2, :pswitch_data_56

    .line 399
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Illegal style: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 389
    :pswitch_1e
    if-eqz p1, :cond_3b

    .line 390
    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    .line 401
    .local v2, "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    :goto_22
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/icu/util/TimeZone;->getCanonicalID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, "canonicalID":Ljava/lang/String;
    if-eqz v0, :cond_46

    .line 403
    invoke-static {p3}, Landroid/icu/text/TimeZoneNames;->getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneNames;

    move-result-object v3

    .line 404
    .local v3, "names":Landroid/icu/text/TimeZoneNames;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 405
    .local v4, "now":J
    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    move-result-object v1

    .line 406
    .local v1, "displayName":Ljava/lang/String;
    if-eqz v1, :cond_46

    .line 407
    return-object v1

    .line 391
    .end local v0    # "canonicalID":Ljava/lang/String;
    .end local v1    # "displayName":Ljava/lang/String;
    .end local v2    # "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    .end local v3    # "names":Landroid/icu/text/TimeZoneNames;
    .end local v4    # "now":J
    :cond_3b
    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    .restart local v2    # "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    goto :goto_22

    .line 394
    .end local v2    # "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    :pswitch_3e
    if-eqz p1, :cond_43

    .line 395
    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    .restart local v2    # "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    goto :goto_22

    .line 396
    .end local v2    # "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    :cond_43
    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    .restart local v2    # "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    goto :goto_22

    .line 413
    .restart local v0    # "canonicalID":Ljava/lang/String;
    :cond_46
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v6

    .line 414
    .local v6, "offsetMillis":I
    if-eqz p1, :cond_51

    .line 415
    invoke-virtual {p0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v7

    add-int/2addr v6, v7

    .line 417
    :cond_51
    invoke-static {v8, v8, v6}, Ljava/util/TimeZone;->createGmtOffsetString(ZZI)Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 387
    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_3e
    .end packed-switch
.end method

.method public getID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 289
    iget-object v0, p0, Ljava/util/TimeZone;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getOffset(IIIIII)I
.end method

.method public getOffset(J)I
    .registers 6
    .param p1, "date"    # J

    .prologue
    .line 216
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 217
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    invoke-virtual {p0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 219
    :cond_15
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    return v0
.end method

.method getOffsets(J[I)I
    .registers 7
    .param p1, "date"    # J
    .param p3, "offsets"    # [I

    .prologue
    .line 239
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    .line 240
    .local v1, "rawoffset":I
    const/4 v0, 0x0

    .line 241
    .local v0, "dstoffset":I
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 242
    invoke-virtual {p0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v0

    .line 244
    :cond_14
    if-eqz p3, :cond_1c

    .line 245
    const/4 v2, 0x0

    aput v1, p3, v2

    .line 246
    const/4 v2, 0x1

    aput v0, p3, v2

    .line 248
    :cond_1c
    add-int v2, v1, v0

    return v2
.end method

.method public abstract getRawOffset()I
.end method

.method public hasSameRules(Ljava/util/TimeZone;)Z
    .registers 5
    .param p1, "other"    # Ljava/util/TimeZone;

    .prologue
    const/4 v0, 0x0

    .line 759
    if-eqz p1, :cond_18

    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    if-ne v1, v2, :cond_18

    .line 760
    invoke-virtual {p0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v1

    invoke-virtual {p1}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v2

    if-ne v1, v2, :cond_18

    const/4 v0, 0x1

    .line 759
    :cond_18
    return v0
.end method

.method public abstract inDaylightTime(Ljava/util/Date;)Z
.end method

.method public observesDaylightTime()Z
    .registers 2

    .prologue
    .line 534
    invoke-virtual {p0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f
.end method

.method public setID(Ljava/lang/String;)V
    .registers 3
    .param p1, "ID"    # Ljava/lang/String;

    .prologue
    .line 299
    if-nez p1, :cond_8

    .line 300
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 302
    :cond_8
    iput-object p1, p0, Ljava/util/TimeZone;->ID:Ljava/lang/String;

    .line 303
    return-void
.end method

.method public abstract setRawOffset(I)V
.end method

.method public toZoneId()Ljava/time/ZoneId;
    .registers 3

    .prologue
    .line 619
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/time/ZoneId;->SHORT_IDS:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/time/ZoneId;->of(Ljava/lang/String;Ljava/util/Map;)Ljava/time/ZoneId;

    move-result-object v0

    return-object v0
.end method

.method public abstract useDaylightTime()Z
.end method
