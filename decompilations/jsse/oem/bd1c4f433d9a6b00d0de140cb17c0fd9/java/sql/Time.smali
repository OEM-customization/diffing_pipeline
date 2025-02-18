.class public Ljava/sql/Time;
.super Ljava/util/Date;
.source "Time.java"


# static fields
.field static final serialVersionUID:J = 0x74894a0dd932c471L


# direct methods
.method public constructor <init>(III)V
    .registers 11
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 59
    const/16 v1, 0x46

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    .line 60
    return-void
.end method

.method public constructor <init>(J)V
    .registers 4
    .param p1, "time"    # J

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 71
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/sql/Time;
    .registers 10
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x3a

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 97
    if-nez p0, :cond_c

    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 99
    :cond_c
    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 100
    .local v0, "firstColon":I
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v8, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 101
    .local v4, "secondColon":I
    if-lez v0, :cond_4a

    move v8, v6

    :goto_19
    if-lez v4, :cond_4c

    move v5, v6

    :goto_1c
    and-int/2addr v5, v8

    .line 102
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v4, v8, :cond_4e

    .line 101
    :goto_25
    and-int/2addr v5, v6

    if-eqz v5, :cond_50

    .line 103
    invoke-virtual {p0, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 105
    .local v1, "hour":I
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 106
    .local v2, "minute":I
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 111
    .local v3, "second":I
    new-instance v5, Ljava/sql/Time;

    invoke-direct {v5, v1, v2, v3}, Ljava/sql/Time;-><init>(III)V

    return-object v5

    .end local v1    # "hour":I
    .end local v2    # "minute":I
    .end local v3    # "second":I
    :cond_4a
    move v8, v7

    .line 101
    goto :goto_19

    :cond_4c
    move v5, v7

    goto :goto_1c

    :cond_4e
    move v6, v7

    .line 102
    goto :goto_25

    .line 108
    :cond_50
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5
.end method


# virtual methods
.method public getDate()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 199
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public getDay()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public getMonth()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 172
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public getYear()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setDate(I)V
    .registers 3
    .param p1, "i"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 240
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setMonth(I)V
    .registers 3
    .param p1, "i"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 227
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setTime(J)V
    .registers 4
    .param p1, "time"    # J

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Ljava/util/Date;->setTime(J)V

    .line 82
    return-void
.end method

.method public setYear(I)V
    .registers 3
    .param p1, "i"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 213
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    .prologue
    const/16 v8, 0xa

    .line 120
    invoke-super {p0}, Ljava/util/Date;->getHours()I

    move-result v0

    .line 121
    .local v0, "hour":I
    invoke-super {p0}, Ljava/util/Date;->getMinutes()I

    move-result v2

    .line 122
    .local v2, "minute":I
    invoke-super {p0}, Ljava/util/Date;->getSeconds()I

    move-result v4

    .line 127
    .local v4, "second":I
    if-ge v0, v8, :cond_74

    .line 128
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "hourString":Ljava/lang/String;
    :goto_24
    if-ge v2, v8, :cond_79

    .line 133
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, "minuteString":Ljava/lang/String;
    :goto_3a
    if-ge v4, v8, :cond_7e

    .line 138
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 142
    .local v5, "secondString":Ljava/lang/String;
    :goto_50
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 130
    .end local v1    # "hourString":Ljava/lang/String;
    .end local v3    # "minuteString":Ljava/lang/String;
    .end local v5    # "secondString":Ljava/lang/String;
    :cond_74
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "hourString":Ljava/lang/String;
    goto :goto_24

    .line 135
    :cond_79
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "minuteString":Ljava/lang/String;
    goto :goto_3a

    .line 140
    :cond_7e
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "secondString":Ljava/lang/String;
    goto :goto_50
.end method
