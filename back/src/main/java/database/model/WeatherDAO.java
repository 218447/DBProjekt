package database.model;

public interface WeatherDAO {
    void insertAtmosphericData(AtmosphericData atmosphericData);
    void insertDay(Day day);
    void insertHistory(History history);
    void insertForecast(Forecast forecast);
    AtmosphericData findAtmosphericData(int id);
    Day findDay(int id);
    History findHistory(int id);
    Forecast findForecast(int id);
}
