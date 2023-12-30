const root = ReactDOM.createRoot(document.getElementById("root"));

const App = () => {
  const { useState } = React;
  const getInitialState = () => {
    const value = "Bootstrap";
    return value;
  };

  const [value, setValue] = useState(getInitialState);

  const handleChange = (e) => {
    setValue(e.target.value);
  };

  return (
    <>
      <div className="select-container">
        <select className="select" value={value} onChange={handleChange}>
          <option value="Bootstrap">Bootstrap</option>
          <option value="Tailwind CSS">Tailwind CSS</option>
          <option value="Pure CSS">Pure CSS</option>
        </select>
        <p>{`You selected ${value}`}</p>
      </div>
    </>
  );
};
root.render(<App />);
