.class final Ljava/time/Ser;
.super Ljava/lang/Object;
.source "Ser.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final blacklist DURATION_TYPE:B = 0x1t

.field static final blacklist INSTANT_TYPE:B = 0x2t

.field static final blacklist LOCAL_DATE_TIME_TYPE:B = 0x5t

.field static final blacklist LOCAL_DATE_TYPE:B = 0x3t

.field static final blacklist LOCAL_TIME_TYPE:B = 0x4t

.field static final blacklist MONTH_DAY_TYPE:B = 0xdt

.field static final blacklist OFFSET_DATE_TIME_TYPE:B = 0xat

.field static final blacklist OFFSET_TIME_TYPE:B = 0x9t

.field static final blacklist PERIOD_TYPE:B = 0xet

.field static final blacklist YEAR_MONTH_TYPE:B = 0xct

.field static final blacklist YEAR_TYPE:B = 0xbt

.field static final blacklist ZONE_DATE_TIME_TYPE:B = 0x6t

.field static final blacklist ZONE_OFFSET_TYPE:B = 0x8t

.field static final blacklist ZONE_REGION_TYPE:B = 0x7t

.field private static final whitelist serialVersionUID:J = -0x6aa27b45e4ddb74eL


# instance fields
.field private blacklist object:Ljava/lang/Object;

.field private blacklist type:B


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    return-void
.end method

.method constructor blacklist <init>(BLjava/lang/Object;)V
    .registers 3
    .param p1, "type"    # B
    .param p2, "object"    # Ljava/lang/Object;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-byte p1, p0, Ljava/time/Ser;->type:B

    .line 130
    iput-object p2, p0, Ljava/time/Ser;->object:Ljava/lang/Object;

    .line 131
    return-void
.end method

.method static blacklist read(Ljava/io/ObjectInput;)Ljava/lang/Object;
    .registers 3
    .param p0, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 250
    invoke-interface {p0}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    .line 251
    .local v0, "type":B
    invoke-static {v0, p0}, Ljava/time/Ser;->readInternal(BLjava/io/ObjectInput;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist readInternal(BLjava/io/ObjectInput;)Ljava/lang/Object;
    .registers 4
    .param p0, "type"    # B
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 255
    packed-switch p0, :pswitch_data_52

    .line 271
    new-instance v0, Ljava/io/StreamCorruptedException;

    const-string v1, "Unknown serialized type"

    invoke-direct {v0, v1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :pswitch_b
    invoke-static {p1}, Ljava/time/Period;->readExternal(Ljava/io/DataInput;)Ljava/time/Period;

    move-result-object v0

    return-object v0

    .line 268
    :pswitch_10
    invoke-static {p1}, Ljava/time/MonthDay;->readExternal(Ljava/io/DataInput;)Ljava/time/MonthDay;

    move-result-object v0

    return-object v0

    .line 267
    :pswitch_15
    invoke-static {p1}, Ljava/time/YearMonth;->readExternal(Ljava/io/DataInput;)Ljava/time/YearMonth;

    move-result-object v0

    return-object v0

    .line 266
    :pswitch_1a
    invoke-static {p1}, Ljava/time/Year;->readExternal(Ljava/io/DataInput;)Ljava/time/Year;

    move-result-object v0

    return-object v0

    .line 265
    :pswitch_1f
    invoke-static {p1}, Ljava/time/OffsetDateTime;->readExternal(Ljava/io/ObjectInput;)Ljava/time/OffsetDateTime;

    move-result-object v0

    return-object v0

    .line 264
    :pswitch_24
    invoke-static {p1}, Ljava/time/OffsetTime;->readExternal(Ljava/io/ObjectInput;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0

    .line 262
    :pswitch_29
    invoke-static {p1}, Ljava/time/ZoneOffset;->readExternal(Ljava/io/DataInput;)Ljava/time/ZoneOffset;

    move-result-object v0

    return-object v0

    .line 263
    :pswitch_2e
    invoke-static {p1}, Ljava/time/ZoneRegion;->readExternal(Ljava/io/DataInput;)Ljava/time/ZoneId;

    move-result-object v0

    return-object v0

    .line 261
    :pswitch_33
    invoke-static {p1}, Ljava/time/ZonedDateTime;->readExternal(Ljava/io/ObjectInput;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    .line 259
    :pswitch_38
    invoke-static {p1}, Ljava/time/LocalDateTime;->readExternal(Ljava/io/DataInput;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    .line 260
    :pswitch_3d
    invoke-static {p1}, Ljava/time/LocalTime;->readExternal(Ljava/io/DataInput;)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0

    .line 258
    :pswitch_42
    invoke-static {p1}, Ljava/time/LocalDate;->readExternal(Ljava/io/DataInput;)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0

    .line 257
    :pswitch_47
    invoke-static {p1}, Ljava/time/Instant;->readExternal(Ljava/io/DataInput;)Ljava/time/Instant;

    move-result-object v0

    return-object v0

    .line 256
    :pswitch_4c
    invoke-static {p1}, Ljava/time/Duration;->readExternal(Ljava/io/DataInput;)Ljava/time/Duration;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_47
        :pswitch_42
        :pswitch_3d
        :pswitch_38
        :pswitch_33
        :pswitch_2e
        :pswitch_29
        :pswitch_24
        :pswitch_1f
        :pswitch_1a
        :pswitch_15
        :pswitch_10
        :pswitch_b
    .end packed-switch
.end method

.method private whitelist readResolve()Ljava/lang/Object;
    .registers 2

    .line 281
    iget-object v0, p0, Ljava/time/Ser;->object:Ljava/lang/Object;

    return-object v0
.end method

.method static blacklist writeInternal(BLjava/lang/Object;Ljava/io/ObjectOutput;)V
    .registers 5
    .param p0, "type"    # B
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    invoke-interface {p2, p0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 167
    packed-switch p0, :pswitch_data_72

    .line 211
    new-instance v0, Ljava/io/InvalidClassException;

    const-string v1, "Unknown serialized type"

    invoke-direct {v0, v1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :pswitch_e
    move-object v0, p1

    check-cast v0, Ljava/time/Period;

    invoke-virtual {v0, p2}, Ljava/time/Period;->writeExternal(Ljava/io/DataOutput;)V

    .line 209
    goto :goto_70

    .line 205
    :pswitch_15
    move-object v0, p1

    check-cast v0, Ljava/time/MonthDay;

    invoke-virtual {v0, p2}, Ljava/time/MonthDay;->writeExternal(Ljava/io/DataOutput;)V

    .line 206
    goto :goto_70

    .line 202
    :pswitch_1c
    move-object v0, p1

    check-cast v0, Ljava/time/YearMonth;

    invoke-virtual {v0, p2}, Ljava/time/YearMonth;->writeExternal(Ljava/io/DataOutput;)V

    .line 203
    goto :goto_70

    .line 199
    :pswitch_23
    move-object v0, p1

    check-cast v0, Ljava/time/Year;

    invoke-virtual {v0, p2}, Ljava/time/Year;->writeExternal(Ljava/io/DataOutput;)V

    .line 200
    goto :goto_70

    .line 196
    :pswitch_2a
    move-object v0, p1

    check-cast v0, Ljava/time/OffsetDateTime;

    invoke-virtual {v0, p2}, Ljava/time/OffsetDateTime;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 197
    goto :goto_70

    .line 193
    :pswitch_31
    move-object v0, p1

    check-cast v0, Ljava/time/OffsetTime;

    invoke-virtual {v0, p2}, Ljava/time/OffsetTime;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 194
    goto :goto_70

    .line 187
    :pswitch_38
    move-object v0, p1

    check-cast v0, Ljava/time/ZoneOffset;

    invoke-virtual {v0, p2}, Ljava/time/ZoneOffset;->writeExternal(Ljava/io/DataOutput;)V

    .line 188
    goto :goto_70

    .line 184
    :pswitch_3f
    move-object v0, p1

    check-cast v0, Ljava/time/ZoneRegion;

    invoke-virtual {v0, p2}, Ljava/time/ZoneRegion;->writeExternal(Ljava/io/DataOutput;)V

    .line 185
    goto :goto_70

    .line 190
    :pswitch_46
    move-object v0, p1

    check-cast v0, Ljava/time/ZonedDateTime;

    invoke-virtual {v0, p2}, Ljava/time/ZonedDateTime;->writeExternal(Ljava/io/DataOutput;)V

    .line 191
    goto :goto_70

    .line 178
    :pswitch_4d
    move-object v0, p1

    check-cast v0, Ljava/time/LocalDateTime;

    invoke-virtual {v0, p2}, Ljava/time/LocalDateTime;->writeExternal(Ljava/io/DataOutput;)V

    .line 179
    goto :goto_70

    .line 181
    :pswitch_54
    move-object v0, p1

    check-cast v0, Ljava/time/LocalTime;

    invoke-virtual {v0, p2}, Ljava/time/LocalTime;->writeExternal(Ljava/io/DataOutput;)V

    .line 182
    goto :goto_70

    .line 175
    :pswitch_5b
    move-object v0, p1

    check-cast v0, Ljava/time/LocalDate;

    invoke-virtual {v0, p2}, Ljava/time/LocalDate;->writeExternal(Ljava/io/DataOutput;)V

    .line 176
    goto :goto_70

    .line 172
    :pswitch_62
    move-object v0, p1

    check-cast v0, Ljava/time/Instant;

    invoke-virtual {v0, p2}, Ljava/time/Instant;->writeExternal(Ljava/io/DataOutput;)V

    .line 173
    goto :goto_70

    .line 169
    :pswitch_69
    move-object v0, p1

    check-cast v0, Ljava/time/Duration;

    invoke-virtual {v0, p2}, Ljava/time/Duration;->writeExternal(Ljava/io/DataOutput;)V

    .line 170
    nop

    .line 213
    :goto_70
    return-void

    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_69
        :pswitch_62
        :pswitch_5b
        :pswitch_54
        :pswitch_4d
        :pswitch_46
        :pswitch_3f
        :pswitch_38
        :pswitch_31
        :pswitch_2a
        :pswitch_23
        :pswitch_1c
        :pswitch_15
        :pswitch_e
    .end packed-switch
.end method


# virtual methods
.method public whitelist core-platform-api test-api readExternal(Ljava/io/ObjectInput;)V
    .registers 3
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 245
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Ljava/time/Ser;->type:B

    .line 246
    invoke-static {v0, p1}, Ljava/time/Ser;->readInternal(BLjava/io/ObjectInput;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/time/Ser;->object:Ljava/lang/Object;

    .line 247
    return-void
.end method

.method public whitelist core-platform-api test-api writeExternal(Ljava/io/ObjectOutput;)V
    .registers 4
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    iget-byte v0, p0, Ljava/time/Ser;->type:B

    iget-object v1, p0, Ljava/time/Ser;->object:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Ljava/time/Ser;->writeInternal(BLjava/lang/Object;Ljava/io/ObjectOutput;)V

    .line 163
    return-void
.end method
