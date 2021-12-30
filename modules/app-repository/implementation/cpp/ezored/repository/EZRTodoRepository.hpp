#pragma once

#include "nativium/domain/Todo.hpp"
#include "nativium/repository/TodoRepository.hpp"

#include "SQLiteCpp/SQLiteCpp.h"

namespace nativium
{
namespace repository
{

using namespace domain;

class EZRTodoRepository : TodoRepository
{
public:
    virtual ~EZRTodoRepository() {}
    static Todo bindFromRow(SQLite::Statement &row);
};

} // namespace repository
} // namespace nativium
