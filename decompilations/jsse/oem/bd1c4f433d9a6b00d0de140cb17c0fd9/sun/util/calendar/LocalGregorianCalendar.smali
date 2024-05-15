.class public Lsun/util/calendar/LocalGregorianCalendar;
.super Lsun/util/calendar/BaseCalendar;
.source "LocalGregorianCalendar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/util/calendar/LocalGregorianCalendar$Date;
    }
.end annotation


# instance fields
.field private eras:[Lsun/util/calendar/Era;

.field private name:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;[Lsun/util/calendar/Era;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "eras"    # [Lsun/util/calendar/Era;

    .prologue
    .line 181
    invoke-direct {p0}, Lsun/util/calendar/BaseCalendar;-><init>()V

    .line 182
    iput-object p1, p0, Lsun/util/calendar/LocalGregorianCalendar;->name:Ljava/lang/String;

    .line 183
    iput-object p2, p0, Lsun/util/calendar/LocalGregorianCalendar;->eras:[Lsun/util/calendar/Era;

    .line 184
    invoke-virtual {p0, p2}, Lsun/util/calendar/LocalGregorianCalendar;->setEras([Lsun/util/calendar/Era;)V

    .line 185
    return-void
.end method

.method private adjustYear(Lsun/util/calendar/LocalGregorianCalendar$Date;JI)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .registers 15
    .param p1, "ldate"    # Lsun/util/calendar/LocalGregorianCalendar$Date;
    .param p2, "millis"    # J
    .param p4, "zoneOffset"    # I

    .prologue
    const/4 v8, 0x0

    .line 215
    iget-object v5, p0, Lsun/util/calendar/LocalGregorianCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v5, v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_31

    .line 216
    iget-object v5, p0, Lsun/util/calendar/LocalGregorianCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v0, v5, v1

    .line 217
    .local v0, "era":Lsun/util/calendar/Era;
    invoke-virtual {v0, v8}, Lsun/util/calendar/Era;->getSince(Ljava/util/TimeZone;)J

    move-result-wide v2

    .line 218
    .local v2, "since":J
    invoke-virtual {v0}, Lsun/util/calendar/Era;->isLocalTime()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 219
    int-to-long v6, p4

    sub-long/2addr v2, v6

    .line 221
    :cond_18
    cmp-long v5, p2, v2

    if-ltz v5, :cond_42

    .line 222
    invoke-virtual {p1, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setLocalEra(Lsun/util/calendar/Era;)V

    .line 223
    invoke-virtual {p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v5

    invoke-virtual {v0}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v6

    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v4, v5, 0x1

    .line 224
    .local v4, "y":I
    invoke-virtual {p1, v4}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setLocalYear(I)V

    .line 228
    .end local v0    # "era":Lsun/util/calendar/Era;
    .end local v2    # "since":J
    .end local v4    # "y":I
    :cond_31
    if-gez v1, :cond_3d

    .line 229
    invoke-virtual {p1, v8}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setLocalEra(Lsun/util/calendar/Era;)V

    .line 230
    invoke-virtual {p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v5

    invoke-virtual {p1, v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setLocalYear(I)V

    .line 232
    :cond_3d
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setNormalized(Z)V

    .line 233
    return-object p1

    .line 215
    .restart local v0    # "era":Lsun/util/calendar/Era;
    .restart local v2    # "since":J
    :cond_42
    add-int/lit8 v1, v1, -0x1

    goto :goto_6
.end method

.method static getLocalGregorianCalendar(Ljava/lang/String;)Lsun/util/calendar/LocalGregorianCalendar;
    .registers 26
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 123
    :try_start_0
    invoke-static {}, Lsun/util/calendar/CalendarSystem;->getCalendarProperties()Ljava/util/Properties;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_2e

    move-result-object v4

    .line 128
    .local v4, "calendarProps":Ljava/util/Properties;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "calendar."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ".eras"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 129
    .local v20, "props":Ljava/lang/String;
    if-nez v20, :cond_37

    .line 130
    const/16 v22, 0x0

    return-object v22

    .line 124
    .end local v4    # "calendarProps":Ljava/util/Properties;
    .end local v20    # "props":Ljava/lang/String;
    :catch_2e
    move-exception v11

    .line 125
    .local v11, "e":Ljava/lang/Exception;
    new-instance v22, Ljava/lang/InternalError;

    move-object/from16 v0, v22

    invoke-direct {v0, v11}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v22

    .line 132
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v4    # "calendarProps":Ljava/util/Properties;
    .restart local v20    # "props":Ljava/lang/String;
    :cond_37
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v14, "eras":Ljava/util/List;, "Ljava/util/List<Lsun/util/calendar/Era;>;"
    new-instance v13, Ljava/util/StringTokenizer;

    const-string/jumbo v22, ";"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v13, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .local v13, "eraTokens":Ljava/util/StringTokenizer;
    :goto_48
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v22

    if-eqz v22, :cond_116

    .line 135
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    .line 136
    .local v18, "items":Ljava/lang/String;
    new-instance v17, Ljava/util/StringTokenizer;

    const-string/jumbo v22, ","

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .local v17, "itemTokens":Ljava/util/StringTokenizer;
    const/4 v6, 0x0

    .line 138
    .local v6, "eraName":Ljava/lang/String;
    const/4 v10, 0x1

    .line 139
    .local v10, "localTime":Z
    const-wide/16 v8, 0x0

    .line 140
    .local v8, "since":J
    const/4 v7, 0x0

    .line 142
    .end local v6    # "eraName":Ljava/lang/String;
    :goto_69
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v22

    if-eqz v22, :cond_10c

    .line 143
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v16

    .line 144
    .local v16, "item":Ljava/lang/String;
    const/16 v22, 0x3d

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    .line 146
    .local v15, "index":I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v15, v0, :cond_86

    .line 147
    const/16 v22, 0x0

    return-object v22

    .line 149
    :cond_86
    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 150
    .local v19, "key":Ljava/lang/String;
    add-int/lit8 v22, v15, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    .line 151
    .local v21, "value":Ljava/lang/String;
    const-string/jumbo v22, "name"

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_aa

    .line 152
    move-object/from16 v6, v21

    .local v6, "eraName":Ljava/lang/String;
    goto :goto_69

    .line 153
    .end local v6    # "eraName":Ljava/lang/String;
    :cond_aa
    const-string/jumbo v22, "since"

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_dd

    .line 154
    const-string/jumbo v22, "u"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_d8

    .line 155
    const/4 v10, 0x0

    .line 156
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    goto :goto_69

    .line 158
    :cond_d8
    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    goto :goto_69

    .line 160
    :cond_dd
    const-string/jumbo v22, "abbr"

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_ee

    .line 161
    move-object/from16 v7, v21

    .local v7, "abbr":Ljava/lang/String;
    goto/16 :goto_69

    .line 163
    .end local v7    # "abbr":Ljava/lang/String;
    :cond_ee
    new-instance v22, Ljava/lang/RuntimeException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Unknown key word: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 166
    .end local v15    # "index":I
    .end local v16    # "item":Ljava/lang/String;
    .end local v19    # "key":Ljava/lang/String;
    .end local v21    # "value":Ljava/lang/String;
    :cond_10c
    new-instance v5, Lsun/util/calendar/Era;

    invoke-direct/range {v5 .. v10}, Lsun/util/calendar/Era;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 167
    .local v5, "era":Lsun/util/calendar/Era;
    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_48

    .line 171
    .end local v5    # "era":Lsun/util/calendar/Era;
    .end local v8    # "since":J
    .end local v10    # "localTime":Z
    .end local v17    # "itemTokens":Ljava/util/StringTokenizer;
    .end local v18    # "items":Ljava/lang/String;
    :cond_116
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_13a

    .line 172
    new-instance v22, Ljava/lang/RuntimeException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "No eras for "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 175
    :cond_13a
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v12, v0, [Lsun/util/calendar/Era;

    .line 176
    .local v12, "eraArray":[Lsun/util/calendar/Era;
    invoke-interface {v14, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 178
    new-instance v22, Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lsun/util/calendar/LocalGregorianCalendar;-><init>(Ljava/lang/String;[Lsun/util/calendar/Era;)V

    return-object v22
.end method

.method private validateEra(Lsun/util/calendar/Era;)Z
    .registers 4
    .param p1, "era"    # Lsun/util/calendar/Era;

    .prologue
    .line 272
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lsun/util/calendar/LocalGregorianCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v1, v1

    if-ge v0, v1, :cond_11

    .line 273
    iget-object v1, p0, Lsun/util/calendar/LocalGregorianCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_e

    .line 274
    const/4 v1, 0x1

    return v1

    .line 272
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 277
    :cond_11
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public bridge synthetic getCalendarDate()Lsun/util/calendar/CalendarDate;
    .registers 2

    .prologue
    .line 192
    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate()Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCalendarDate(J)Lsun/util/calendar/CalendarDate;
    .registers 4

    .prologue
    .line 197
    invoke-virtual {p0, p1, p2}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/CalendarDate;
    .registers 5

    .prologue
    .line 202
    invoke-virtual {p0, p1, p2, p3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;
    .registers 5

    .prologue
    .line 207
    invoke-virtual {p0, p1, p2, p3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarDate()Lsun/util/calendar/LocalGregorianCalendar$Date;
    .registers 4

    .prologue
    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate()Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarDate(J)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .registers 4
    .param p1, "millis"    # J

    .prologue
    .line 199
    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate()Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .registers 5
    .param p1, "millis"    # J
    .param p3, "zone"    # Ljava/util/TimeZone;

    .prologue
    .line 204
    invoke-virtual {p0, p3}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .registers 7
    .param p1, "millis"    # J
    .param p3, "date"    # Lsun/util/calendar/CalendarDate;

    .prologue
    .line 209
    invoke-super {p0, p1, p2, p3}, Lsun/util/calendar/BaseCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    move-result-object v0

    check-cast v0, Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 210
    .local v0, "ldate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getZoneOffset()I

    move-result v1

    invoke-direct {p0, v0, p1, p2, v1}, Lsun/util/calendar/LocalGregorianCalendar;->adjustYear(Lsun/util/calendar/LocalGregorianCalendar$Date;JI)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v1

    return-object v1
.end method

.method public getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V
    .registers 10
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;
    .param p2, "fixedDate"    # J

    .prologue
    move-object v0, p1

    .line 391
    check-cast v0, Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 392
    .local v0, "ldate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-super {p0, v0, p2, p3}, Lsun/util/calendar/BaseCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    .line 393
    const-wide/32 v2, 0xaf93b

    sub-long v2, p2, v2

    const-wide/32 v4, 0x5265c00

    mul-long/2addr v2, v4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v3, v1}, Lsun/util/calendar/LocalGregorianCalendar;->adjustYear(Lsun/util/calendar/LocalGregorianCalendar$Date;JI)Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 394
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lsun/util/calendar/LocalGregorianCalendar;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isLeapYear(I)Z
    .registers 3
    .param p1, "gregorianYear"    # I

    .prologue
    .line 378
    invoke-static {p1}, Lsun/util/calendar/CalendarUtils;->isGregorianLeapYear(I)Z

    move-result v0

    return v0
.end method

.method public isLeapYear(Lsun/util/calendar/Era;I)Z
    .registers 5
    .param p1, "era"    # Lsun/util/calendar/Era;
    .param p2, "year"    # I

    .prologue
    .line 382
    if-nez p1, :cond_7

    .line 383
    invoke-virtual {p0, p2}, Lsun/util/calendar/LocalGregorianCalendar;->isLeapYear(I)Z

    move-result v1

    return v1

    .line 385
    :cond_7
    invoke-virtual {p1}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v1

    invoke-virtual {v1}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v1

    add-int/2addr v1, p2

    add-int/lit8 v0, v1, -0x1

    .line 386
    .local v0, "gyear":I
    invoke-virtual {p0, v0}, Lsun/util/calendar/LocalGregorianCalendar;->isLeapYear(I)Z

    move-result v1

    return v1
.end method

.method public bridge synthetic newCalendarDate()Lsun/util/calendar/CalendarDate;
    .registers 2

    .prologue
    .line 236
    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate()Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;
    .registers 3

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public newCalendarDate()Lsun/util/calendar/LocalGregorianCalendar$Date;
    .registers 2

    .prologue
    .line 238
    new-instance v0, Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-direct {v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;-><init>()V

    return-object v0
.end method

.method public newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .registers 3
    .param p1, "zone"    # Ljava/util/TimeZone;

    .prologue
    .line 243
    new-instance v0, Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-direct {v0, p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;-><init>(Ljava/util/TimeZone;)V

    return-object v0
.end method

.method public normalize(Lsun/util/calendar/CalendarDate;)Z
    .registers 26
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .prologue
    .line 282
    invoke-virtual/range {p1 .. p1}, Lsun/util/calendar/CalendarDate;->isNormalized()Z

    move-result v22

    if-eqz v22, :cond_9

    .line 283
    const/16 v22, 0x1

    return v22

    .line 286
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lsun/util/calendar/LocalGregorianCalendar;->normalizeYear(Lsun/util/calendar/CalendarDate;)V

    move-object/from16 v6, p1

    .line 287
    check-cast v6, Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 290
    .local v6, "ldate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    move-object/from16 v0, p0

    invoke-super {v0, v6}, Lsun/util/calendar/BaseCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 292
    const/4 v4, 0x0

    .line 293
    .local v4, "hasMillis":Z
    const-wide/16 v8, 0x0

    .line 294
    .local v8, "millis":J
    invoke-virtual {v6}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v21

    .line 296
    .local v21, "year":I
    const/4 v3, 0x0

    .line 297
    .local v3, "era":Lsun/util/calendar/Era;
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/util/calendar/LocalGregorianCalendar;->eras:[Lsun/util/calendar/Era;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    add-int/lit8 v5, v22, -0x1

    .end local v3    # "era":Lsun/util/calendar/Era;
    .local v5, "i":I
    :goto_2a
    if-ltz v5, :cond_46

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/util/calendar/LocalGregorianCalendar;->eras:[Lsun/util/calendar/Era;

    move-object/from16 v22, v0

    aget-object v3, v22, v5

    .line 299
    .local v3, "era":Lsun/util/calendar/Era;
    invoke-virtual {v3}, Lsun/util/calendar/Era;->isLocalTime()Z

    move-result v22

    if-eqz v22, :cond_95

    .line 300
    invoke-virtual {v3}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v12

    .line 301
    .local v12, "sinceDate":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v12}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v15

    .line 302
    .local v15, "sinceYear":I
    move/from16 v0, v21

    if-le v0, v15, :cond_6a

    .line 340
    .end local v3    # "era":Lsun/util/calendar/Era;
    .end local v12    # "sinceDate":Lsun/util/calendar/CalendarDate;
    .end local v15    # "sinceYear":I
    :cond_46
    :goto_46
    if-ltz v5, :cond_ae

    .line 341
    invoke-virtual {v6, v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setLocalEra(Lsun/util/calendar/Era;)V

    .line 342
    invoke-virtual {v6}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v22

    invoke-virtual {v3}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v23

    sub-int v22, v22, v23

    add-int/lit8 v20, v22, 0x1

    .line 343
    .local v20, "y":I
    move/from16 v0, v20

    invoke-virtual {v6, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setLocalYear(I)V

    .line 350
    .end local v20    # "y":I
    :goto_60
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setNormalized(Z)V

    .line 351
    const/16 v22, 0x1

    return v22

    .line 305
    .restart local v3    # "era":Lsun/util/calendar/Era;
    .restart local v12    # "sinceDate":Lsun/util/calendar/CalendarDate;
    .restart local v15    # "sinceYear":I
    :cond_6a
    move/from16 v0, v21

    if-ne v0, v15, :cond_aa

    .line 306
    invoke-virtual {v6}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v7

    .line 307
    .local v7, "month":I
    invoke-virtual {v12}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v14

    .line 308
    .local v14, "sinceMonth":I
    if-gt v7, v14, :cond_46

    .line 311
    if-ne v7, v14, :cond_aa

    .line 312
    invoke-virtual {v6}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v2

    .line 313
    .local v2, "day":I
    invoke-virtual {v12}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v13

    .line 314
    .local v13, "sinceDay":I
    if-gt v2, v13, :cond_46

    .line 317
    if-ne v2, v13, :cond_aa

    .line 318
    invoke-virtual {v6}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getTimeOfDay()J

    move-result-wide v18

    .line 319
    .local v18, "timeOfDay":J
    invoke-virtual {v12}, Lsun/util/calendar/CalendarDate;->getTimeOfDay()J

    move-result-wide v16

    .line 320
    .local v16, "sinceTimeOfDay":J
    cmp-long v22, v18, v16

    if-gez v22, :cond_46

    .line 323
    add-int/lit8 v5, v5, -0x1

    .line 324
    goto :goto_46

    .line 329
    .end local v2    # "day":I
    .end local v7    # "month":I
    .end local v12    # "sinceDate":Lsun/util/calendar/CalendarDate;
    .end local v13    # "sinceDay":I
    .end local v14    # "sinceMonth":I
    .end local v15    # "sinceYear":I
    .end local v16    # "sinceTimeOfDay":J
    .end local v18    # "timeOfDay":J
    :cond_95
    if-nez v4, :cond_9c

    .line 330
    invoke-super/range {p0 .. p1}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v8

    .line 331
    const/4 v4, 0x1

    .line 334
    :cond_9c
    invoke-virtual/range {p1 .. p1}, Lsun/util/calendar/CalendarDate;->getZone()Ljava/util/TimeZone;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lsun/util/calendar/Era;->getSince(Ljava/util/TimeZone;)J

    move-result-wide v10

    .line 335
    .local v10, "since":J
    cmp-long v22, v8, v10

    if-gez v22, :cond_46

    .line 297
    .end local v10    # "since":J
    :cond_aa
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_2a

    .line 346
    .end local v3    # "era":Lsun/util/calendar/Era;
    :cond_ae
    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 347
    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setLocalYear(I)V

    .line 348
    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setNormalizedYear(I)V

    goto :goto_60
.end method

.method normalizeMonth(Lsun/util/calendar/CalendarDate;)V
    .registers 2
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .prologue
    .line 356
    invoke-virtual {p0, p1}, Lsun/util/calendar/LocalGregorianCalendar;->normalizeYear(Lsun/util/calendar/CalendarDate;)V

    .line 357
    invoke-super {p0, p1}, Lsun/util/calendar/BaseCalendar;->normalizeMonth(Lsun/util/calendar/CalendarDate;)V

    .line 358
    return-void
.end method

.method normalizeYear(Lsun/util/calendar/CalendarDate;)V
    .registers 6
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .prologue
    move-object v1, p1

    .line 361
    check-cast v1, Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 364
    .local v1, "ldate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v0

    .line 365
    .local v0, "era":Lsun/util/calendar/Era;
    if-eqz v0, :cond_11

    invoke-direct {p0, v0}, Lsun/util/calendar/LocalGregorianCalendar;->validateEra(Lsun/util/calendar/Era;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_19

    .line 366
    :cond_11
    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v2

    invoke-virtual {v1, v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setNormalizedYear(I)V

    .line 370
    :goto_18
    return-void

    .line 368
    :cond_19
    invoke-virtual {v0}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v2

    invoke-virtual {v2}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v2

    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setNormalizedYear(I)V

    goto :goto_18
.end method

.method public validate(Lsun/util/calendar/CalendarDate;)Z
    .registers 10
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .prologue
    const/4 v7, 0x0

    move-object v1, p1

    .line 248
    check-cast v1, Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 249
    .local v1, "ldate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v0

    .line 250
    .local v0, "era":Lsun/util/calendar/Era;
    if-eqz v0, :cond_48

    .line 251
    invoke-direct {p0, v0}, Lsun/util/calendar/LocalGregorianCalendar;->validateEra(Lsun/util/calendar/Era;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 252
    return v7

    .line 254
    :cond_11
    invoke-virtual {v0}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v3

    invoke-virtual {v3}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v3

    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setNormalizedYear(I)V

    .line 255
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {p0, v3}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v2

    .line 256
    .local v2, "tmp":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v2, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v3

    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v4

    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v5

    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 257
    invoke-virtual {p0, v2}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 258
    invoke-virtual {v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v3

    if-eq v3, v0, :cond_62

    .line 259
    return v7

    .line 262
    .end local v2    # "tmp":Lsun/util/calendar/LocalGregorianCalendar$Date;
    :cond_48
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v3

    iget-object v4, p0, Lsun/util/calendar/LocalGregorianCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v4

    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v4

    if-lt v3, v4, :cond_5b

    .line 263
    return v7

    .line 265
    :cond_5b
    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v3

    invoke-virtual {v1, v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setNormalizedYear(I)V

    .line 267
    :cond_62
    invoke-super {p0, v1}, Lsun/util/calendar/BaseCalendar;->validate(Lsun/util/calendar/CalendarDate;)Z

    move-result v3

    return v3
.end method
