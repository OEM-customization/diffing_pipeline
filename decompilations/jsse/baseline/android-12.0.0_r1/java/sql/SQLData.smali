.class public interface abstract Ljava/sql/SQLData;
.super Ljava/lang/Object;
.source "SQLData.java"


# virtual methods
.method public abstract whitelist test-api getSQLTypeName()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api readSQL(Ljava/sql/SQLInput;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api writeSQL(Ljava/sql/SQLOutput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method
