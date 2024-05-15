.class final Ljava/time/chrono/Ser;
.super Ljava/lang/Object;
.source "Ser.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final blacklist CHRONO_LOCAL_DATE_TIME_TYPE:B = 0x2t

.field static final blacklist CHRONO_PERIOD_TYPE:B = 0x9t

.field static final blacklist CHRONO_TYPE:B = 0x1t

.field static final blacklist CHRONO_ZONE_DATE_TIME_TYPE:B = 0x3t

.field static final blacklist HIJRAH_DATE_TYPE:B = 0x6t

.field static final blacklist JAPANESE_DATE_TYPE:B = 0x4t

.field static final blacklist JAPANESE_ERA_TYPE:B = 0x5t

.field static final blacklist MINGUO_DATE_TYPE:B = 0x7t

.field static final blacklist THAIBUDDHIST_DATE_TYPE:B = 0x8t

.field private static final whitelist serialVersionUID:J = -0x54b386e71d87ec81L


# instance fields
.field private blacklist object:Ljava/lang/Object;

.field private blacklist type:B


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    return-void
.end method

.method constructor blacklist <init>(BLjava/lang/Object;)V
    .registers 3
    .param p1, "type"    # B
    .param p2, "object"    # Ljava/lang/Object;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-byte p1, p0, Ljava/time/chrono/Ser;->type:B

    .line 128
    iput-object p2, p0, Ljava/time/chrono/Ser;->object:Ljava/lang/Object;

    .line 129
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

    .line 228
    invoke-interface {p0}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    .line 229
    .local v0, "type":B
    invoke-static {v0, p0}, Ljava/time/chrono/Ser;->readInternal(BLjava/io/ObjectInput;)Ljava/lang/Object;

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

    .line 233
    packed-switch p0, :pswitch_data_38

    .line 243
    new-instance v0, Ljava/io/StreamCorruptedException;

    const-string v1, "Unknown serialized type"

    invoke-direct {v0, v1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :pswitch_b
    invoke-static {p1}, Ljava/time/chrono/ChronoPeriodImpl;->readExternal(Ljava/io/DataInput;)Ljava/time/chrono/ChronoPeriodImpl;

    move-result-object v0

    return-object v0

    .line 241
    :pswitch_10
    invoke-static {p1}, Ljava/time/chrono/ThaiBuddhistDate;->readExternal(Ljava/io/DataInput;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0

    .line 240
    :pswitch_15
    invoke-static {p1}, Ljava/time/chrono/MinguoDate;->readExternal(Ljava/io/DataInput;)Ljava/time/chrono/MinguoDate;

    move-result-object v0

    return-object v0

    .line 239
    :pswitch_1a
    invoke-static {p1}, Ljava/time/chrono/HijrahDate;->readExternal(Ljava/io/ObjectInput;)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0

    .line 238
    :pswitch_1f
    invoke-static {p1}, Ljava/time/chrono/JapaneseEra;->readExternal(Ljava/io/DataInput;)Ljava/time/chrono/JapaneseEra;

    move-result-object v0

    return-object v0

    .line 237
    :pswitch_24
    invoke-static {p1}, Ljava/time/chrono/JapaneseDate;->readExternal(Ljava/io/DataInput;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0

    .line 236
    :pswitch_29
    invoke-static {p1}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->readExternal(Ljava/io/ObjectInput;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0

    .line 235
    :pswitch_2e
    invoke-static {p1}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->readExternal(Ljava/io/ObjectInput;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    return-object v0

    .line 234
    :pswitch_33
    invoke-static {p1}, Ljava/time/chrono/AbstractChronology;->readExternal(Ljava/io/DataInput;)Ljava/time/chrono/Chronology;

    move-result-object v0

    return-object v0

    :pswitch_data_38
    .packed-switch 0x1
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

    .line 253
    iget-object v0, p0, Ljava/time/chrono/Ser;->object:Ljava/lang/Object;

    return-object v0
.end method

.method private static blacklist writeInternal(BLjava/lang/Object;Ljava/io/ObjectOutput;)V
    .registers 5
    .param p0, "type"    # B
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    invoke-interface {p2, p0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 162
    packed-switch p0, :pswitch_data_4e

    .line 191
    new-instance v0, Ljava/io/InvalidClassException;

    const-string v1, "Unknown serialized type"

    invoke-direct {v0, v1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :pswitch_e
    move-object v0, p1

    check-cast v0, Ljava/time/chrono/ChronoPeriodImpl;

    invoke-virtual {v0, p2}, Ljava/time/chrono/ChronoPeriodImpl;->writeExternal(Ljava/io/DataOutput;)V

    .line 189
    goto :goto_4d

    .line 185
    :pswitch_15
    move-object v0, p1

    check-cast v0, Ljava/time/chrono/ThaiBuddhistDate;

    invoke-virtual {v0, p2}, Ljava/time/chrono/ThaiBuddhistDate;->writeExternal(Ljava/io/DataOutput;)V

    .line 186
    goto :goto_4d

    .line 182
    :pswitch_1c
    move-object v0, p1

    check-cast v0, Ljava/time/chrono/MinguoDate;

    invoke-virtual {v0, p2}, Ljava/time/chrono/MinguoDate;->writeExternal(Ljava/io/DataOutput;)V

    .line 183
    goto :goto_4d

    .line 179
    :pswitch_23
    move-object v0, p1

    check-cast v0, Ljava/time/chrono/HijrahDate;

    invoke-virtual {v0, p2}, Ljava/time/chrono/HijrahDate;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 180
    goto :goto_4d

    .line 176
    :pswitch_2a
    move-object v0, p1

    check-cast v0, Ljava/time/chrono/JapaneseEra;

    invoke-virtual {v0, p2}, Ljava/time/chrono/JapaneseEra;->writeExternal(Ljava/io/DataOutput;)V

    .line 177
    goto :goto_4d

    .line 173
    :pswitch_31
    move-object v0, p1

    check-cast v0, Ljava/time/chrono/JapaneseDate;

    invoke-virtual {v0, p2}, Ljava/time/chrono/JapaneseDate;->writeExternal(Ljava/io/DataOutput;)V

    .line 174
    goto :goto_4d

    .line 170
    :pswitch_38
    move-object v0, p1

    check-cast v0, Ljava/time/chrono/ChronoZonedDateTimeImpl;

    invoke-virtual {v0, p2}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 171
    goto :goto_4d

    .line 167
    :pswitch_3f
    move-object v0, p1

    check-cast v0, Ljava/time/chrono/ChronoLocalDateTimeImpl;

    invoke-virtual {v0, p2}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 168
    goto :goto_4d

    .line 164
    :pswitch_46
    move-object v0, p1

    check-cast v0, Ljava/time/chrono/AbstractChronology;

    invoke-virtual {v0, p2}, Ljava/time/chrono/AbstractChronology;->writeExternal(Ljava/io/DataOutput;)V

    .line 165
    nop

    .line 193
    :goto_4d
    return-void

    :pswitch_data_4e
    .packed-switch 0x1
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
.method public whitelist test-api readExternal(Ljava/io/ObjectInput;)V
    .registers 3
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 223
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Ljava/time/chrono/Ser;->type:B

    .line 224
    invoke-static {v0, p1}, Ljava/time/chrono/Ser;->readInternal(BLjava/io/ObjectInput;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/time/chrono/Ser;->object:Ljava/lang/Object;

    .line 225
    return-void
.end method

.method public whitelist test-api writeExternal(Ljava/io/ObjectOutput;)V
    .registers 4
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    iget-byte v0, p0, Ljava/time/chrono/Ser;->type:B

    iget-object v1, p0, Ljava/time/chrono/Ser;->object:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Ljava/time/chrono/Ser;->writeInternal(BLjava/lang/Object;Ljava/io/ObjectOutput;)V

    .line 158
    return-void
.end method
