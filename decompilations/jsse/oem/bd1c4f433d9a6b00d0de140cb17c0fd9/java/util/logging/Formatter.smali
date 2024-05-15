.class public abstract Ljava/util/logging/Formatter;
.super Ljava/lang/Object;
.source "Formatter.java"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method


# virtual methods
.method public abstract format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
.end method

.method public declared-synchronized formatMessage(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .registers 8
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    monitor-enter p0

    .line 114
    :try_start_1
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "format":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getResourceBundle()Ljava/util/ResourceBundle;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_53

    move-result-object v0

    .line 116
    .local v0, "catalog":Ljava/util/ResourceBundle;
    if-eqz v0, :cond_13

    .line 118
    :try_start_b
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_12
    .catch Ljava/util/MissingResourceException; {:try_start_b .. :try_end_12} :catch_1e
    .catchall {:try_start_b .. :try_end_12} :catchall_53

    move-result-object v3

    .line 126
    :cond_13
    :goto_13
    :try_start_13
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getParameters()[Ljava/lang/Object;

    move-result-object v4

    .line 127
    .local v4, "parameters":[Ljava/lang/Object;
    if-eqz v4, :cond_1c

    array-length v5, v4
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1a} :catch_50
    .catchall {:try_start_13 .. :try_end_1a} :catchall_53

    if-nez v5, :cond_24

    :cond_1c
    monitor-exit p0

    .line 129
    return-object v3

    .line 119
    .end local v4    # "parameters":[Ljava/lang/Object;
    :catch_1e
    move-exception v2

    .line 121
    .local v2, "ex":Ljava/util/MissingResourceException;
    :try_start_1f
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_53

    move-result-object v3

    goto :goto_13

    .line 136
    .end local v2    # "ex":Ljava/util/MissingResourceException;
    .restart local v4    # "parameters":[Ljava/lang/Object;
    :cond_24
    :try_start_24
    const-string/jumbo v5, "{0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_36

    const-string/jumbo v5, "{1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_3c

    .line 138
    :cond_36
    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_39} :catch_50
    .catchall {:try_start_24 .. :try_end_39} :catchall_53

    move-result-object v5

    monitor-exit p0

    return-object v5

    .line 137
    :cond_3c
    :try_start_3c
    const-string/jumbo v5, "{2"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_36

    const-string/jumbo v5, "{3"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_4b} :catch_50
    .catchall {:try_start_3c .. :try_end_4b} :catchall_53

    move-result v5

    if-gez v5, :cond_36

    monitor-exit p0

    .line 140
    return-object v3

    .line 142
    .end local v4    # "parameters":[Ljava/lang/Object;
    :catch_50
    move-exception v1

    .local v1, "ex":Ljava/lang/Exception;
    monitor-exit p0

    .line 144
    return-object v3

    .end local v0    # "catalog":Ljava/util/ResourceBundle;
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v3    # "format":Ljava/lang/String;
    :catchall_53
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public getHead(Ljava/util/logging/Handler;)Ljava/lang/String;
    .registers 3
    .param p1, "h"    # Ljava/util/logging/Handler;

    .prologue
    .line 75
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getTail(Ljava/util/logging/Handler;)Ljava/lang/String;
    .registers 3
    .param p1, "h"    # Ljava/util/logging/Handler;

    .prologue
    .line 88
    const-string/jumbo v0, ""

    return-object v0
.end method
