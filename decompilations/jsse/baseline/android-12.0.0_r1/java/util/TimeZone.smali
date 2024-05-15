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
.field private static final greylist-max-o GMT:Ljava/util/TimeZone;

.field public static final whitelist test-api LONG:I = 0x1

.field static final greylist-max-o NO_TIMEZONE:Ljava/util/TimeZone;

.field public static final whitelist test-api SHORT:I = 0x0

.field private static final greylist-max-o UTC:Ljava/util/TimeZone;

.field private static volatile greylist-max-o defaultTimeZone:Ljava/util/TimeZone; = null

.field static final whitelist serialVersionUID:J = 0x31b3e9f57744aca1L


# instance fields
.field private greylist-max-o ID:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 175
    new-instance v0, Ljava/util/SimpleTimeZone;

    const/4 v1, 0x0

    const-string v2, "GMT"

    invoke-direct {v0, v1, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljava/util/TimeZone;->GMT:Ljava/util/TimeZone;

    .line 176
    new-instance v0, Ljava/util/SimpleTimeZone;

    const-string v2, "UTC"

    invoke-direct {v0, v1, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljava/util/TimeZone;->UTC:Ljava/util/TimeZone;

    .line 786
    const/4 v0, 0x0

    sput-object v0, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    return-void
.end method

.method private static greylist-max-o appendNumber(Ljava/lang/StringBuilder;II)V
    .registers 6
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "count"    # I
    .param p2, "value"    # I

    .line 463
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, "string":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, p1, v2

    if-ge v1, v2, :cond_15

    .line 465
    const/16 v2, 0x30

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 464
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 467
    .end local v1    # "i":I
    :cond_15
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    return-void
.end method

.method public static greylist-max-o createGmtOffsetString(ZZI)Ljava/lang/String;
    .registers 8
    .param p0, "includeGmt"    # Z
    .param p1, "includeMinuteSeparator"    # Z
    .param p2, "offsetMillis"    # I

    .line 443
    const v0, 0xea60

    div-int v0, p2, v0

    .line 444
    .local v0, "offsetMinutes":I
    const/16 v1, 0x2b

    .line 445
    .local v1, "sign":C
    if-gez v0, :cond_c

    .line 446
    const/16 v1, 0x2d

    .line 447
    neg-int v0, v0

    .line 449
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 450
    .local v2, "builder":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_1a

    .line 451
    const-string v3, "GMT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    :cond_1a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 454
    div-int/lit8 v3, v0, 0x3c

    const/4 v4, 0x2

    invoke-static {v2, v4, v3}, Ljava/util/TimeZone;->appendNumber(Ljava/lang/StringBuilder;II)V

    .line 455
    if-eqz p1, :cond_2a

    .line 456
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 458
    :cond_2a
    rem-int/lit8 v3, v0, 0x3c

    invoke-static {v2, v4, v3}, Ljava/util/TimeZone;->appendNumber(Ljava/lang/StringBuilder;II)V

    .line 459
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static declared-synchronized whitelist test-api getAvailableIDs()[Ljava/lang/String;
    .registers 2

    const-class v0, Ljava/util/TimeZone;

    monitor-enter v0

    .line 679
    :try_start_3
    invoke-static {}, Lcom/android/i18n/timezone/ZoneInfoDb;->getInstance()Lcom/android/i18n/timezone/ZoneInfoDb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/i18n/timezone/ZoneInfoDb;->getAvailableIDs()[Ljava/lang/String;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-object v1

    .line 679
    :catchall_d
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized whitelist test-api getAvailableIDs(I)[Ljava/lang/String;
    .registers 3
    .param p0, "rawOffset"    # I

    const-class v0, Ljava/util/TimeZone;

    monitor-enter v0

    .line 671
    :try_start_3
    invoke-static {}, Lcom/android/i18n/timezone/ZoneInfoDb;->getInstance()Lcom/android/i18n/timezone/ZoneInfoDb;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/i18n/timezone/ZoneInfoDb;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-object v1

    .line 671
    .end local p0    # "rawOffset":I
    :catchall_d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static greylist-max-o getCustomTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    .registers 11
    .param p0, "id"    # Ljava/lang/String;

    .line 630
    sget-object v0, Ljava/util/TimeZone$NoImagePreloadHolder;->CUSTOM_ZONE_ID_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 631
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 632
    return-object v2

    .line 636
    :cond_e
    const/4 v1, 0x0

    .line 638
    .local v1, "minute":I
    const/4 v3, 0x1

    :try_start_10
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 639
    .local v4, "hour":I
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_28

    .line 640
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_27} :catch_6d

    move v1, v6

    .line 644
    :cond_28
    nop

    .line 646
    if-ltz v4, :cond_6c

    const/16 v6, 0x17

    if-gt v4, v6, :cond_6c

    if-ltz v1, :cond_6c

    const/16 v6, 0x3b

    if-le v1, v6, :cond_36

    goto :goto_6c

    .line 650
    :cond_36
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 651
    .local v2, "sign":C
    const v6, 0x36ee80

    mul-int/2addr v6, v4

    const v7, 0xea60

    mul-int/2addr v7, v1

    add-int/2addr v6, v7

    .line 652
    .local v6, "raw":I
    const/16 v7, 0x2d

    if-ne v2, v7, :cond_48

    .line 653
    neg-int v6, v6

    .line 656
    :cond_48
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v3

    const/4 v3, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v3

    const-string v3, "GMT%c%02d:%02d"

    invoke-static {v7, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 658
    .local v3, "cleanId":Ljava/lang/String;
    new-instance v5, Ljava/util/SimpleTimeZone;

    invoke-direct {v5, v6, v3}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    return-object v5

    .line 647
    .end local v2    # "sign":C
    .end local v3    # "cleanId":Ljava/lang/String;
    .end local v6    # "raw":I
    :cond_6c
    :goto_6c
    return-object v2

    .line 642
    .end local v4    # "hour":I
    :catch_6d
    move-exception v2

    .line 643
    .local v2, "impossible":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public static whitelist test-api getDefault()Ljava/util/TimeZone;
    .registers 1

    .line 702
    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TimeZone;

    return-object v0
.end method

.method static declared-synchronized greylist-max-o getDefaultRef()Ljava/util/TimeZone;
    .registers 5

    const-class v0, Ljava/util/TimeZone;

    monitor-enter v0

    .line 710
    :try_start_3
    sget-object v1, Ljava/util/TimeZone;->defaultTimeZone:Ljava/util/TimeZone;

    if-nez v1, :cond_36

    .line 711
    invoke-static {}, Ldalvik/system/RuntimeHooks;->getTimeZoneIdSupplier()Ljava/util/function/Supplier;

    move-result-object v1

    .line 712
    .local v1, "tzGetter":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    if-eqz v1, :cond_14

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    .line 713
    .local v2, "zoneName":Ljava/lang/String;
    :goto_15
    if-eqz v2, :cond_1c

    .line 714
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 716
    :cond_1c
    if-eqz v2, :cond_24

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_3a

    if-eqz v3, :cond_30

    .line 719
    :cond_24
    :try_start_24
    const-string v3, "/etc/timezone"

    invoke-static {v3}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2a} :catch_2c
    .catchall {:try_start_24 .. :try_end_2a} :catchall_3a

    move-object v2, v3

    .line 724
    goto :goto_30

    .line 720
    :catch_2c
    move-exception v3

    .line 723
    .local v3, "ex":Ljava/io/IOException;
    :try_start_2d
    const-string v4, "GMT"

    move-object v2, v4

    .line 726
    .end local v3    # "ex":Ljava/io/IOException;
    :cond_30
    :goto_30
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    sput-object v3, Ljava/util/TimeZone;->defaultTimeZone:Ljava/util/TimeZone;

    .line 728
    .end local v1    # "tzGetter":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    .end local v2    # "zoneName":Ljava/lang/String;
    :cond_36
    sget-object v1, Ljava/util/TimeZone;->defaultTimeZone:Ljava/util/TimeZone;
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_3a

    monitor-exit v0

    return-object v1

    .line 709
    :catchall_3a
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static native greylist-max-o getSystemGMTOffsetID()Ljava/lang/String;
.end method

.method private static native greylist-max-o getSystemTimeZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static declared-synchronized whitelist test-api getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    .registers 6
    .param p0, "id"    # Ljava/lang/String;

    const-class v0, Ljava/util/TimeZone;

    monitor-enter v0

    .line 566
    if-eqz p0, :cond_65

    .line 571
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_30

    .line 572
    const-string v1, "GMT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 573
    sget-object v1, Ljava/util/TimeZone;->GMT:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TimeZone;
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_63

    monitor-exit v0

    return-object v1

    .line 575
    :cond_1e
    :try_start_1e
    const-string v1, "UTC"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 576
    sget-object v1, Ljava/util/TimeZone;->UTC:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TimeZone;
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_63

    monitor-exit v0

    return-object v1

    .line 582
    :cond_30
    :try_start_30
    invoke-static {}, Lcom/android/i18n/timezone/ZoneInfoDb;->getInstance()Lcom/android/i18n/timezone/ZoneInfoDb;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/i18n/timezone/ZoneInfoDb;->makeZoneInfoData(Ljava/lang/String;)Lcom/android/i18n/timezone/ZoneInfoData;

    move-result-object v1

    .line 583
    .local v1, "zoneInfoData":Lcom/android/i18n/timezone/ZoneInfoData;
    if-nez v1, :cond_3c

    const/4 v3, 0x0

    goto :goto_40

    :cond_3c
    invoke-static {v1}, Llibcore/util/ZoneInfo;->createZoneInfo(Lcom/android/i18n/timezone/ZoneInfoData;)Llibcore/util/ZoneInfo;

    move-result-object v3

    .line 586
    .local v3, "zone":Ljava/util/TimeZone;
    :goto_40
    if-nez v3, :cond_55

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v2, :cond_55

    const-string v2, "GMT"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 587
    invoke-static {p0}, Ljava/util/TimeZone;->getCustomTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    move-object v3, v2

    .line 591
    :cond_55
    if-eqz v3, :cond_59

    move-object v2, v3

    goto :goto_61

    :cond_59
    sget-object v2, Ljava/util/TimeZone;->GMT:Ljava/util/TimeZone;

    invoke-virtual {v2}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/TimeZone;
    :try_end_61
    .catchall {:try_start_30 .. :try_end_61} :catchall_63

    :goto_61
    monitor-exit v0

    return-object v2

    .line 565
    .end local v1    # "zoneInfoData":Lcom/android/i18n/timezone/ZoneInfoData;
    .end local v3    # "zone":Ljava/util/TimeZone;
    .end local p0    # "id":Ljava/lang/String;
    :catchall_63
    move-exception p0

    goto :goto_6d

    .line 567
    .restart local p0    # "id":Ljava/lang/String;
    :cond_65
    :try_start_65
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "id == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_6d
    .catchall {:try_start_65 .. :try_end_6d} :catchall_63

    .line 565
    .end local p0    # "id":Ljava/lang/String;
    :goto_6d
    monitor-exit v0

    throw p0
.end method

.method public static whitelist test-api getTimeZone(Ljava/time/ZoneId;)Ljava/util/TimeZone;
    .registers 5
    .param p0, "zoneId"    # Ljava/time/ZoneId;

    .line 604
    invoke-virtual {p0}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v0

    .line 605
    .local v0, "tzid":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 606
    .local v1, "c":C
    const/16 v2, 0x2b

    if-eq v1, v2, :cond_20

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_12

    goto :goto_20

    .line 608
    :cond_12
    const/16 v2, 0x5a

    if-ne v1, v2, :cond_31

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_31

    .line 609
    const-string v0, "UTC"

    goto :goto_31

    .line 607
    :cond_20
    :goto_20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GMT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 611
    :cond_31
    :goto_31
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    return-object v2
.end method

.method public static declared-synchronized whitelist test-api setDefault(Ljava/util/TimeZone;)V
    .registers 6
    .param p0, "timeZone"    # Ljava/util/TimeZone;

    const-class v0, Ljava/util/TimeZone;

    monitor-enter v0

    .line 743
    :try_start_3
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 744
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_15

    .line 745
    new-instance v2, Ljava/util/PropertyPermission;

    const-string v3, "user.timezone"

    const-string v4, "write"

    invoke-direct {v2, v3, v4}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 748
    :cond_15
    if-eqz p0, :cond_1e

    invoke-virtual {p0}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/TimeZone;

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    :goto_1f
    sput-object v2, Ljava/util/TimeZone;->defaultTimeZone:Ljava/util/TimeZone;

    .line 750
    invoke-static {}, Lcom/android/icu/util/ExtendedTimeZone;->clearDefaultTimeZone()V
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_26

    .line 751
    monitor-exit v0

    return-void

    .line 742
    .end local v1    # "sm":Ljava/lang/SecurityManager;
    .end local p0    # "timeZone":Ljava/util/TimeZone;
    :catchall_26
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 775
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TimeZone;

    .line 776
    .local v0, "other":Ljava/util/TimeZone;
    iget-object v1, p0, Ljava/util/TimeZone;->ID:Ljava/lang/String;

    iput-object v1, v0, Ljava/util/TimeZone;->ID:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_a} :catch_b

    .line 777
    return-object v0

    .line 778
    .end local v0    # "other":Ljava/util/TimeZone;
    :catch_b
    move-exception v0

    .line 779
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api getDSTSavings()I
    .registers 2

    .line 498
    invoke-virtual {p0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 499
    const v0, 0x36ee80

    return v0

    .line 501
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist test-api getDisplayName()Ljava/lang/String;
    .registers 4

    .line 328
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    .line 329
    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    .line 328
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .registers 4
    .param p1, "locale"    # Ljava/util/Locale;

    .line 348
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getDisplayName(ZI)Ljava/lang/String;
    .registers 4
    .param p1, "daylight"    # Z
    .param p2, "style"    # I

    .line 376
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    .line 377
    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    .line 376
    invoke-virtual {p0, p1, p2, v0}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;
    .registers 10
    .param p1, "daylightTime"    # Z
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;

    .line 393
    packed-switch p2, :pswitch_data_56

    .line 405
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    :pswitch_1a
    if-eqz p1, :cond_1f

    .line 401
    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    goto :goto_21

    .line 402
    :cond_1f
    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    :goto_21
    nop

    .line 403
    .local v0, "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    goto :goto_2c

    .line 395
    .end local v0    # "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    :pswitch_23
    if-eqz p1, :cond_28

    .line 396
    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    goto :goto_2a

    .line 397
    :cond_28
    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    :goto_2a
    nop

    .line 398
    .restart local v0    # "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    nop

    .line 407
    :goto_2c
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/util/TimeZone;->getCanonicalID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 408
    .local v1, "canonicalID":Ljava/lang/String;
    if-eqz v1, :cond_45

    .line 409
    invoke-static {p3}, Landroid/icu/text/TimeZoneNames;->getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneNames;

    move-result-object v2

    .line 410
    .local v2, "names":Landroid/icu/text/TimeZoneNames;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 411
    .local v3, "now":J
    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    move-result-object v5

    .line 412
    .local v5, "displayName":Ljava/lang/String;
    if-eqz v5, :cond_45

    .line 413
    return-object v5

    .line 419
    .end local v2    # "names":Landroid/icu/text/TimeZoneNames;
    .end local v3    # "now":J
    .end local v5    # "displayName":Ljava/lang/String;
    :cond_45
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    .line 420
    .local v2, "offsetMillis":I
    if-eqz p1, :cond_50

    .line 421
    invoke-virtual {p0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v3

    add-int/2addr v2, v3

    .line 423
    :cond_50
    const/4 v3, 0x1

    invoke-static {v3, v3, v2}, Ljava/util/TimeZone;->createGmtOffsetString(ZZI)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_23
        :pswitch_1a
    .end packed-switch
.end method

.method public whitelist test-api getID()Ljava/lang/String;
    .registers 2

    .line 295
    iget-object v0, p0, Ljava/util/TimeZone;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public abstract whitelist test-api getOffset(IIIIII)I
.end method

.method public whitelist test-api getOffset(J)I
    .registers 5
    .param p1, "date"    # J

    .line 222
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 223
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    invoke-virtual {p0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 225
    :cond_15
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    return v0
.end method

.method greylist-max-o getOffsets(J[I)I
    .registers 7
    .param p1, "date"    # J
    .param p3, "offsets"    # [I

    .line 245
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    .line 246
    .local v0, "rawoffset":I
    const/4 v1, 0x0

    .line 247
    .local v1, "dstoffset":I
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 248
    invoke-virtual {p0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v1

    .line 250
    :cond_14
    if-eqz p3, :cond_1c

    .line 251
    const/4 v2, 0x0

    aput v0, p3, v2

    .line 252
    const/4 v2, 0x1

    aput v1, p3, v2

    .line 254
    :cond_1c
    add-int v2, v0, v1

    return v2
.end method

.method public abstract whitelist test-api getRawOffset()I
.end method

.method public whitelist test-api hasSameRules(Ljava/util/TimeZone;)Z
    .registers 4
    .param p1, "other"    # Ljava/util/TimeZone;

    .line 763
    if-eqz p1, :cond_18

    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    if-ne v0, v1, :cond_18

    .line 764
    invoke-virtual {p0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v0

    invoke-virtual {p1}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v1

    if-ne v0, v1, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 763
    :goto_19
    return v0
.end method

.method public abstract whitelist test-api inDaylightTime(Ljava/util/Date;)Z
.end method

.method public whitelist test-api observesDaylightTime()Z
    .registers 2

    .line 540
    invoke-virtual {p0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v0

    if-nez v0, :cond_14

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    return v0
.end method

.method public whitelist test-api setID(Ljava/lang/String;)V
    .registers 3
    .param p1, "ID"    # Ljava/lang/String;

    .line 305
    if-eqz p1, :cond_5

    .line 308
    iput-object p1, p0, Ljava/util/TimeZone;->ID:Ljava/lang/String;

    .line 309
    return-void

    .line 306
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public abstract whitelist test-api setRawOffset(I)V
.end method

.method public whitelist test-api toZoneId()Ljava/time/ZoneId;
    .registers 3

    .line 623
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/time/ZoneId;->SHORT_IDS:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/time/ZoneId;->of(Ljava/lang/String;Ljava/util/Map;)Ljava/time/ZoneId;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api useDaylightTime()Z
.end method
