.class public interface abstract Ljava/time/temporal/TemporalUnit;
.super Ljava/lang/Object;
.source "TemporalUnit.java"


# virtual methods
.method public abstract addTo(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/time/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation
.end method

.method public abstract between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J
.end method

.method public abstract getDuration()Ljava/time/Duration;
.end method

.method public abstract isDateBased()Z
.end method

.method public abstract isDurationEstimated()Z
.end method

.method public isSupportedBy(Ljava/time/temporal/Temporal;)Z
    .registers 10
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 169
    instance-of v3, p1, Ljava/time/LocalTime;

    if-eqz v3, :cond_b

    .line 170
    invoke-interface {p0}, Ljava/time/temporal/TemporalUnit;->isTimeBased()Z

    move-result v3

    return v3

    .line 172
    :cond_b
    instance-of v3, p1, Ljava/time/chrono/ChronoLocalDate;

    if-eqz v3, :cond_14

    .line 173
    invoke-interface {p0}, Ljava/time/temporal/TemporalUnit;->isDateBased()Z

    move-result v3

    return v3

    .line 175
    :cond_14
    instance-of v3, p1, Ljava/time/chrono/ChronoLocalDateTime;

    if-nez v3, :cond_1c

    instance-of v3, p1, Ljava/time/chrono/ChronoZonedDateTime;

    if-eqz v3, :cond_1d

    .line 176
    :cond_1c
    return v6

    .line 179
    :cond_1d
    const-wide/16 v4, 0x1

    :try_start_1f
    invoke-interface {p1, v4, v5, p0}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    :try_end_22
    .catch Ljava/time/temporal/UnsupportedTemporalTypeException; {:try_start_1f .. :try_end_22} :catch_2c
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_22} :catch_23

    .line 180
    return v6

    .line 183
    :catch_23
    move-exception v0

    .line 185
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-wide/16 v4, -0x1

    :try_start_26
    invoke-interface {p1, v4, v5, p0}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    :try_end_29
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_29} :catch_2a

    .line 186
    return v6

    .line 187
    :catch_2a
    move-exception v2

    .line 188
    .local v2, "ex2":Ljava/lang/RuntimeException;
    return v7

    .line 181
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v2    # "ex2":Ljava/lang/RuntimeException;
    :catch_2c
    move-exception v1

    .line 182
    .local v1, "ex":Ljava/time/temporal/UnsupportedTemporalTypeException;
    return v7
.end method

.method public abstract isTimeBased()Z
.end method

.method public abstract toString()Ljava/lang/String;
.end method
