.class final Ljava/time/ZoneRegion;
.super Ljava/time/ZoneId;
.source "ZoneRegion.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final whitelist serialVersionUID:J = 0x746262147bb70e18L


# instance fields
.field private final blacklist id:Ljava/lang/String;

.field private final transient blacklist rules:Ljava/time/zone/ZoneRules;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/time/zone/ZoneRules;)V
    .registers 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "rules"    # Ljava/time/zone/ZoneRules;

    .line 162
    invoke-direct {p0}, Ljava/time/ZoneId;-><init>()V

    .line 163
    iput-object p1, p0, Ljava/time/ZoneRegion;->id:Ljava/lang/String;

    .line 164
    iput-object p2, p0, Ljava/time/ZoneRegion;->rules:Ljava/time/zone/ZoneRules;

    .line 165
    return-void
.end method

.method private static blacklist checkName(Ljava/lang/String;)V
    .registers 7
    .param p0, "zoneId"    # Ljava/lang/String;

    .line 136
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 137
    .local v0, "n":I
    const-string v1, "Invalid ID for region-based ZoneId, invalid format: "

    const/4 v2, 0x2

    if-lt v0, v2, :cond_6f

    .line 140
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_6e

    .line 141
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 142
    .local v3, "c":C
    const/16 v4, 0x61

    if-lt v3, v4, :cond_19

    const/16 v4, 0x7a

    if-gt v3, v4, :cond_19

    goto :goto_56

    .line 143
    :cond_19
    const/16 v4, 0x41

    if-lt v3, v4, :cond_22

    const/16 v4, 0x5a

    if-gt v3, v4, :cond_22

    goto :goto_56

    .line 144
    :cond_22
    const/16 v4, 0x2f

    if-ne v3, v4, :cond_29

    if-eqz v2, :cond_29

    goto :goto_56

    .line 145
    :cond_29
    const/16 v4, 0x30

    if-lt v3, v4, :cond_34

    const/16 v4, 0x39

    if-gt v3, v4, :cond_34

    if-eqz v2, :cond_34

    goto :goto_56

    .line 146
    :cond_34
    const/16 v4, 0x7e

    if-ne v3, v4, :cond_3b

    if-eqz v2, :cond_3b

    goto :goto_56

    .line 147
    :cond_3b
    const/16 v4, 0x2e

    if-ne v3, v4, :cond_42

    if-eqz v2, :cond_42

    goto :goto_56

    .line 148
    :cond_42
    const/16 v4, 0x5f

    if-ne v3, v4, :cond_49

    if-eqz v2, :cond_49

    goto :goto_56

    .line 149
    :cond_49
    const/16 v4, 0x2b

    if-ne v3, v4, :cond_50

    if-eqz v2, :cond_50

    goto :goto_56

    .line 150
    :cond_50
    const/16 v4, 0x2d

    if-ne v3, v4, :cond_59

    if-eqz v2, :cond_59

    .line 140
    .end local v3    # "c":C
    :goto_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 151
    .restart local v3    # "c":C
    :cond_59
    new-instance v4, Ljava/time/DateTimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 153
    .end local v2    # "i":I
    .end local v3    # "c":C
    :cond_6e
    return-void

    .line 138
    :cond_6f
    new-instance v2, Ljava/time/DateTimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static blacklist ofId(Ljava/lang/String;Z)Ljava/time/ZoneRegion;
    .registers 4
    .param p0, "zoneId"    # Ljava/lang/String;
    .param p1, "checkAvailable"    # Z

    .line 115
    const-string v0, "zoneId"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    invoke-static {p0}, Ljava/time/ZoneRegion;->checkName(Ljava/lang/String;)V

    .line 117
    const/4 v0, 0x0

    .line 120
    .local v0, "rules":Ljava/time/zone/ZoneRules;
    const/4 v1, 0x1

    :try_start_a
    invoke-static {p0, v1}, Ljava/time/zone/ZoneRulesProvider;->getRules(Ljava/lang/String;Z)Ljava/time/zone/ZoneRules;

    move-result-object v1
    :try_end_e
    .catch Ljava/time/zone/ZoneRulesException; {:try_start_a .. :try_end_e} :catch_10

    move-object v0, v1

    .line 125
    goto :goto_13

    .line 121
    :catch_10
    move-exception v1

    .line 122
    .local v1, "ex":Ljava/time/zone/ZoneRulesException;
    if-nez p1, :cond_19

    .line 126
    .end local v1    # "ex":Ljava/time/zone/ZoneRulesException;
    :goto_13
    new-instance v1, Ljava/time/ZoneRegion;

    invoke-direct {v1, p0, v0}, Ljava/time/ZoneRegion;-><init>(Ljava/lang/String;Ljava/time/zone/ZoneRules;)V

    return-object v1

    .line 123
    .restart local v1    # "ex":Ljava/time/zone/ZoneRulesException;
    :cond_19
    throw v1
.end method

.method static blacklist readExternal(Ljava/io/DataInput;)Ljava/time/ZoneId;
    .registers 3
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "id":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/time/ZoneId;->of(Ljava/lang/String;Z)Ljava/time/ZoneId;

    move-result-object v1

    return-object v1
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 203
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 3

    .line 193
    new-instance v0, Ljava/time/Ser;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Ljava/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api getId()Ljava/lang/String;
    .registers 2

    .line 170
    iget-object v0, p0, Ljava/time/ZoneRegion;->id:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getRules()Ljava/time/zone/ZoneRules;
    .registers 3

    .line 177
    iget-object v0, p0, Ljava/time/ZoneRegion;->rules:Ljava/time/zone/ZoneRules;

    if-eqz v0, :cond_5

    goto :goto_c

    :cond_5
    iget-object v0, p0, Ljava/time/ZoneRegion;->id:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/time/zone/ZoneRulesProvider;->getRules(Ljava/lang/String;Z)Ljava/time/zone/ZoneRules;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method blacklist write(Ljava/io/DataOutput;)V
    .registers 3
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 209
    invoke-virtual {p0, p1}, Ljava/time/ZoneRegion;->writeExternal(Ljava/io/DataOutput;)V

    .line 210
    return-void
.end method

.method blacklist writeExternal(Ljava/io/DataOutput;)V
    .registers 3
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Ljava/time/ZoneRegion;->id:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 214
    return-void
.end method
