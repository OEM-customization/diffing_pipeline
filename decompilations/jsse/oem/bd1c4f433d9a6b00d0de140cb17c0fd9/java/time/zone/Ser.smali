.class final Ljava/time/zone/Ser;
.super Ljava/lang/Object;
.source "Ser.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final ZOT:B = 0x2t

.field static final ZOTRULE:B = 0x3t

.field static final ZRULES:B = 0x1t

.field private static final serialVersionUID:J = -0x7b4f011483e5ac42L


# instance fields
.field private object:Ljava/lang/Object;

.field private type:B


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    return-void
.end method

.method constructor <init>(BLjava/lang/Object;)V
    .registers 3
    .param p1, "type"    # B
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-byte p1, p0, Ljava/time/zone/Ser;->type:B

    .line 116
    iput-object p2, p0, Ljava/time/zone/Ser;->object:Ljava/lang/Object;

    .line 117
    return-void
.end method

.method static read(Ljava/io/DataInput;)Ljava/lang/Object;
    .registers 3
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 187
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 188
    .local v0, "type":B
    invoke-static {v0, p0}, Ljava/time/zone/Ser;->readInternal(BLjava/io/DataInput;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method static readEpochSec(Ljava/io/DataInput;)J
    .registers 11
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 271
    .local v0, "hiByte":I
    const/16 v3, 0xff

    if-ne v0, v3, :cond_f

    .line 272
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v6

    return-wide v6

    .line 274
    :cond_f
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v3

    and-int/lit16 v2, v3, 0xff

    .line 275
    .local v2, "midByte":I
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v3

    and-int/lit16 v1, v3, 0xff

    .line 276
    .local v1, "loByte":I
    shl-int/lit8 v3, v0, 0x10

    shl-int/lit8 v6, v2, 0x8

    add-int/2addr v3, v6

    add-int/2addr v3, v1

    int-to-long v4, v3

    .line 277
    .local v4, "tot":J
    const-wide/16 v6, 0x384

    mul-long/2addr v6, v4

    const-wide v8, 0x110bc5000L

    sub-long/2addr v6, v8

    return-wide v6
.end method

.method private static readInternal(BLjava/io/DataInput;)Ljava/lang/Object;
    .registers 4
    .param p0, "type"    # B
    .param p1, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 192
    packed-switch p0, :pswitch_data_1c

    .line 200
    new-instance v0, Ljava/io/StreamCorruptedException;

    const-string/jumbo v1, "Unknown serialized type"

    invoke-direct {v0, v1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :pswitch_c
    invoke-static {p1}, Ljava/time/zone/ZoneRules;->readExternal(Ljava/io/DataInput;)Ljava/time/zone/ZoneRules;

    move-result-object v0

    return-object v0

    .line 196
    :pswitch_11
    invoke-static {p1}, Ljava/time/zone/ZoneOffsetTransition;->readExternal(Ljava/io/DataInput;)Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v0

    return-object v0

    .line 198
    :pswitch_16
    invoke-static {p1}, Ljava/time/zone/ZoneOffsetTransitionRule;->readExternal(Ljava/io/DataInput;)Ljava/time/zone/ZoneOffsetTransitionRule;

    move-result-object v0

    return-object v0

    .line 192
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_c
        :pswitch_11
        :pswitch_16
    .end packed-switch
.end method

.method static readOffset(Ljava/io/DataInput;)Ljava/time/ZoneOffset;
    .registers 3
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 239
    .local v0, "offsetByte":I
    const/16 v1, 0x7f

    if-ne v0, v1, :cond_11

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v1

    :goto_10
    return-object v1

    :cond_11
    mul-int/lit16 v1, v0, 0x384

    invoke-static {v1}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v1

    goto :goto_10
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Ljava/time/zone/Ser;->object:Ljava/lang/Object;

    return-object v0
.end method

.method static write(Ljava/lang/Object;Ljava/io/DataOutput;)V
    .registers 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Ljava/time/zone/Ser;->writeInternal(BLjava/lang/Object;Ljava/io/DataOutput;)V

    .line 142
    return-void
.end method

.method static writeEpochSec(JLjava/io/DataOutput;)V
    .registers 11
    .param p0, "epochSec"    # J
    .param p2, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x384

    .line 251
    const-wide v2, -0x110bc5000L

    cmp-long v1, p0, v2

    if-ltz v1, :cond_38

    const-wide v2, 0x26cb5db00L

    cmp-long v1, p0, v2

    if-gez v1, :cond_38

    rem-long v2, p0, v6

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_38

    .line 252
    const-wide v2, 0x110bc5000L

    add-long/2addr v2, p0

    div-long/2addr v2, v6

    long-to-int v0, v2

    .line 253
    .local v0, "store":I
    ushr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-interface {p2, v1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 254
    ushr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-interface {p2, v1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 255
    and-int/lit16 v1, v0, 0xff

    invoke-interface {p2, v1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 260
    .end local v0    # "store":I
    :goto_37
    return-void

    .line 257
    :cond_38
    const/16 v1, 0xff

    invoke-interface {p2, v1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 258
    invoke-interface {p2, p0, p1}, Ljava/io/DataOutput;->writeLong(J)V

    goto :goto_37
.end method

.method private static writeInternal(BLjava/lang/Object;Ljava/io/DataOutput;)V
    .registers 5
    .param p0, "type"    # B
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-interface {p2, p0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 146
    packed-switch p0, :pswitch_data_22

    .line 157
    new-instance v0, Ljava/io/InvalidClassException;

    const-string/jumbo v1, "Unknown serialized type"

    invoke-direct {v0, v1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :pswitch_f
    check-cast p1, Ljava/time/zone/ZoneRules;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Ljava/time/zone/ZoneRules;->writeExternal(Ljava/io/DataOutput;)V

    .line 159
    :goto_14
    return-void

    .line 151
    .restart local p1    # "object":Ljava/lang/Object;
    :pswitch_15
    check-cast p1, Ljava/time/zone/ZoneOffsetTransition;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Ljava/time/zone/ZoneOffsetTransition;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_14

    .line 154
    .restart local p1    # "object":Ljava/lang/Object;
    :pswitch_1b
    check-cast p1, Ljava/time/zone/ZoneOffsetTransitionRule;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Ljava/time/zone/ZoneOffsetTransitionRule;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_14

    .line 146
    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_f
        :pswitch_15
        :pswitch_1b
    .end packed-switch
.end method

.method static writeOffset(Ljava/time/ZoneOffset;Ljava/io/DataOutput;)V
    .registers 5
    .param p0, "offset"    # Ljava/time/ZoneOffset;
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-virtual {p0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    .line 223
    .local v1, "offsetSecs":I
    rem-int/lit16 v2, v1, 0x384

    if-nez v2, :cond_15

    div-int/lit16 v0, v1, 0x384

    .line 224
    .local v0, "offsetByte":I
    :goto_a
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 225
    const/16 v2, 0x7f

    if-ne v0, v2, :cond_14

    .line 226
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 228
    :cond_14
    return-void

    .line 223
    .end local v0    # "offsetByte":I
    :cond_15
    const/16 v0, 0x7f

    .restart local v0    # "offsetByte":I
    goto :goto_a
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .registers 3
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Ljava/time/zone/Ser;->type:B

    .line 183
    iget-byte v0, p0, Ljava/time/zone/Ser;->type:B

    invoke-static {v0, p1}, Ljava/time/zone/Ser;->readInternal(BLjava/io/DataInput;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/time/zone/Ser;->object:Ljava/lang/Object;

    .line 184
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 4
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    iget-byte v0, p0, Ljava/time/zone/Ser;->type:B

    iget-object v1, p0, Ljava/time/zone/Ser;->object:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Ljava/time/zone/Ser;->writeInternal(BLjava/lang/Object;Ljava/io/DataOutput;)V

    .line 138
    return-void
.end method
